CREATE TABLE [dbo].[User] (
    [nama]          NVARCHAR (200) NULL,
    [email]         NVARCHAR (200) NULL,
    [tgl_lahir]     DATE           NULL,
    [status]        NCHAR (30)     NULL,
    [jenis_kelamin] NCHAR (10)     NULL,
    [metode_bayar]  NCHAR (50)     NULL,
    [session]       NCHAR (1)      NULL,
    [alamat]        NVARCHAR(1)          NULL,
    [password]      NTEXT   NULL
);

