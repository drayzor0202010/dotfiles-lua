function limpar_cache()
    os.execute("rm -rf $HOME/.cache/*")
    print("Cache do Termux limpo!")
end

function backup_docs()
    os.execute("cp -r $HOME/Documents $HOME/Documents_backup")
    print("Backup de documentos feito!")
end
