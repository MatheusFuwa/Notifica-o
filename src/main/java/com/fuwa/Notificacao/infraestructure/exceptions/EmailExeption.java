package com.fuwa.Notificacao.infraestructure.exceptions;

public class EmailExeption extends RuntimeException {
    public EmailExeption(String mensagem) {
        super(mensagem);
    }

    public EmailExeption(String mensagem, Throwable throwable){
        super(mensagem, throwable);
    }
}
