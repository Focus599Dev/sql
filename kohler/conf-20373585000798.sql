INSERT INTO `fe_sytb_sefazwsconf_swco` (`swco_cnpj`, `swco_key`, `swco_grupo`, `swco_value`, `swco_descr`, `swco_visible`, `swco_tipo`, `swco_options`, `swco_size`, `swco_obs`, `swco_ordem`) VALUES ('20373585000798', 'aDocFormat.font', 'exportacao', 'Times', 'Doc. Fonte', '1', 'SELECT', 'Times[=]Times new Roman', 150, 'Tipo de Fonta da DANFE', 1), ('20373585000798', 'aDocFormat.format', 'exportacao', 'P', 'Doc. Formato', '1', 'SELECT', 'P[=]Retrato[|]L[=]Paisagem', 255, 'Formato da impressão da DANFE', 2), ('20373585000798', 'aDocFormat.logoPosition', 'exportacao', 'L', 'Doc. Posição', '1', 'SELECT', 'L[=]Esquerda[|]C[=]Centro[|]R[=]Direita', 255, 'Posição do Logo na DANFE', 3), ('20373585000798', 'aDocFormat.paper', 'exportacao', 'A4', 'Doc. Tipo de Papel', '1', 'SELECT', 'A4[=]A4', 255, '', 4), ('20373585000798', 'aDocFormat.pathLogoFile', 'exportacao', '', 'Doc. Logo', '1', 'TEXT', '', 255, 'Diretório do Arquivo de Logo da DANFE', 5), ('20373585000798', 'aDocFormat.pathLogoFileSimple', 'exportacao', '', 'Doc. Logo Danfe Simples', '1', 'TEXT', '', 255, 'Diretório do Arquivo de Logo da DANFE Simples', 5), ('20373585000798', 'aDocFormat.printAutNfe', 'exportacao', '0', 'Imprimir Notas Autorizadas', '1', 'SELECT', '0[=]Não[|]1[=]Sim', 255, 'Efetuar Impressão da NF-e quando for autorizada', 7), ('20373585000798', 'aDocFormat.printer', 'exportacao', '', 'Doc. Impressora', '1', 'TEXT', '', 255, 'Nome da Impressora', 6), ('20373585000798', 'aDocFormat.printerIP', 'exportacao', '', 'IP Impressora', '1', 'TEXT', '', 255, 'Nome da Impressora', 7), ('20373585000798', 'aDocFormat.southpaw', 'exportacao', '1', '', '0', 'TEXT', '', 255, '', 7), ('20373585000798', 'aExpXml.copiaXmlNfe', 'exportacao', '', 'Diretório de Cópia de XML da NF-e', '1', 'TEXT', '', 255, '', 8), ('20373585000798', 'aExpXml.copiaXmlNfeCanc', 'exportacao', '', 'Diretório de Cópia de XML da NF-e (Cancelada)', '1', 'TEXT', '', 255, '', 8), ('20373585000798', 'aExpXml.copiaXmlNfeDeneg', 'exportacao', '', 'Diretório de Cópia de XML da NF-e (Denegada)', '1', 'TEXT', '', 255, '', 8), ('20373585000798', 'aExpXml.copiaXmlNfeInut', 'exportacao', '', 'Diretório de Cópia de XML da NF-e (Inutilizada)', '1', 'TEXT', '', 255, '', 8), ('20373585000798', 'aLayoutEmail.layoutAlertaCertValid', 'empresa', '', 'Layout de Alerta do Certificado', '1', 'HTMLPOPUP', '', 255, 'Layout de Email de Alertas da validação do Certificado', 9), ('20373585000798', 'aLayoutEmail.layoutAutAnothers', 'layout.email', '', 'Layout de Autorização (Outros)', '1', 'HTMLPOPUP', '', 255, 'Layout de Email de Autorização para outras partes', 3), ('20373585000798', 'aLayoutEmail.layoutAutClienteForn', 'layout.email', '', 'Layout de Autorização (Cliente/Fornecedor)', '1', 'HTMLPOPUP', '', 255, 'Layout de Email de Autorização para Cliente ou Fornecedor', 1), ('20373585000798', 'aLayoutEmail.layoutAutClienteFornNfeRefuse', 'layout.email', '', 'Layout de Autorização (link de recusa de nfe)', '1', 'HTMLPOPUP', '', 255, 'Layout de Email de Autorização para Cliente ou Fornecedor com link de recusa', 3), ('20373585000798', 'aLayoutEmail.layoutAutTransport', 'layout.email', '', 'Layout de Autorização (Transportadora)', '1', 'HTMLPOPUP', '', 255, 'Layout de Email de Autorização para Transportadora', 2), ('20373585000798', 'aLayoutEmail.layoutCancelClienteForn', 'layout.email', '', 'Layout de Cancelamento (Cliente/Fornecedor)', '1', 'HTMLPOPUP', '', 255, 'Layout de Email de Cancelamento para Cliente ou Fornecedor', 4), ('20373585000798', 'aLayoutEmail.layoutCancelTransport', 'layout.email', '', 'Layout de Cancelamento (Transportadora)', '1', 'HTMLPOPUP', '', 255, 'Layout de Email de Cancelamento para Transportadora', 5), ('20373585000798', 'aLayoutEmail.layoutCceClienteForn', 'layout.email', '', 'Layout da CC-e (Cliente/Fornecedor)', '1', 'HTMLPOPUP', '', 255, 'Layout de Email de Carta de Correção para Cliente ou Fornecedor', 6), ('20373585000798', 'aLayoutEmail.layoutCceTransport', 'layout.email', '', 'Layout da CC-e (Transportadora)', '1', 'HTMLPOPUP', '', 255, 'Layout de Email de Carta de Correção para Transportadora', 7), ('20373585000798', 'alertaNfeRejeitadaEmail', 'geral', '', 'Email para envio de alerta de notas', '1', 'TEXT', '', 255, 'Endereço de email para onde será enviada uma lista de notas.', 4), ('20373585000798', 'alertaNfeRejeitadaStatus', 'geral', '', 'Status das notas para envio de alerta.', '1', 'CHECK', 'ERRO[=]Erro[|]PROC[=]Processamento[|]REJEITADA[=]Rejeitada[|]AUTOR[=]Autorizada[|]CANCEL[=]Cancelada[|]DENEG[=]Use Denegado[|]INUTIL[=]Inutilizada[|]RECEBENDO[=]Recebendo', 255, 'Status das notas a serem eviadas por email.', 5), ('20373585000798', 'aMailConf.mailAuth', 'mail', '1', 'Mail Auth.', '0', 'SELECT', '1[=]Sim[|]0[=]Não', 255, 'Utilizar email autenticado?', 0), ('20373585000798', 'aMailConf.mailFrom', 'mail', '', 'Mail De', '0', 'TEXT', '', 255, 'Conta de Email', 0), ('20373585000798', 'aMailConf.mailFromMail', 'mail', '', 'Mail From mail', '0', 'TEXT', '', 300, 'Email do remetente', 0), ('20373585000798', 'aMailConf.mailFromName', 'mail', '', 'Mail From name', '0', 'TEXT', '', 300, 'Nome do remetente', 0), ('20373585000798', 'aMailConf.mailImapBox', 'mail', '', 'Mail Map BOX', '0', 'TEXT', '', 255, '', 0), ('20373585000798', 'aMailConf.mailImapHost', 'mail', '', 'Mail Map Host', '0', 'TEXT', '', 255, '', 0), ('20373585000798', 'aMailConf.mailImapNocerts', 'mail', '', 'Mail Map Nocerts', '0', 'TEXT', '', 255, '', 0), ('20373585000798', 'aMailConf.mailImapPort', 'mail', '', 'Mail Map Port', '0', 'TEXT', '', 255, '', 0), ('20373585000798', 'aMailConf.mailImapSecurity', 'mail', '', 'Mail Map Security', '0', 'TEXT', '', 255, '', 0), ('20373585000798', 'aMailConf.mailPass', 'mail', '', 'Mail Password', '0', 'PASSWORD', '', 255, 'Senha da Conta de Email', 0), ('20373585000798', 'aMailConf.mailPort', 'mail', '', 'Mail Porta', '0', 'TEXT', '', 255, 'Porta SMTP', 0), ('20373585000798', 'aMailConf.mailProtocol', 'mail', '', 'Mail Protocolo', '0', 'TEXT', '', 255, '', 0), ('20373585000798', 'aMailConf.mailReplayToMail', 'mail', '', 'Mail Replay to Mail', '0', 'TEXT', '', 255, '', 0), ('20373585000798', 'aMailConf.mailReplayToName', 'mail', '', 'Mail Replay To Name', '0', 'TEXT', '', 255, '', 0), ('20373585000798', 'aMailConf.mailSmtp', 'mail', '', 'Mail SMTP', '0', 'TEXT', '', 255, '', 0), ('20373585000798', 'aMailConf.mailUser', 'mail', '', 'Mail User', '0', 'TEXT', '', 255, '', 0), ('20373585000798', 'aProxyConf.proxyIp', 'rede', '', 'Proxy IP', '1', 'TEXT', '', 255, 'Ip do Servidor Proxy', 1), ('20373585000798', 'aProxyConf.proxyPass', 'rede', '', 'Proxy Password', '1', 'PASSWORD', '', 255, 'Senha do Servidor Proxy', 4), ('20373585000798', 'aProxyConf.proxyPort', 'rede', '', 'Proxy Port', '1', 'TEXT', '', 255, 'Porta do Servidor Proxy', 2), ('20373585000798', 'aProxyConf.proxyUser', 'rede', '', 'Proxy User', '1', 'TEXT', '', 255, 'Usuário do Servidor Proxy', 3), ('20373585000798', 'atualizacao', 'geral', '', 'Data da Atualização da Configuração', '0', '', '', 0, '', 0), ('20373585000798', 'boleto.ftp.host', 'nfe.boleto', '', 'FTP HOST', '1', 'TEXT', '', 255, '', 4), ('20373585000798', 'boleto.ftp.password', 'nfe.boleto', '', 'FTP PASSWORD', '1', 'TEXT', '', 255, '', 6), ('20373585000798', 'boleto.ftp.user', 'nfe.boleto', '', 'FTP USER', '1', 'TEXT', '', 255, '', 5), ('20373585000798', 'boleto.layoutEmailBoleto', 'nfe.boleto', '', 'Layout de email envio boleto', '1', 'HTMLPOPUP', '', 255, 'Layout de email envio boleto', 3), ('20373585000798', 'boleto.sendEmail', 'nfe.boleto', '1', 'Envio de email para o cliente', '1', 'SELECT', '1[=]Sim[|]0[=]Não', 255, '', 1), ('20373585000798', 'boleto.sendFTP', 'nfe.boleto', '1', 'Envio de boleto para FTP', '1', 'SELECT', '1[=]Sim[|]0[=]Não', 255, '', 2), ('20373585000798', 'CertChain', 'empresa', '', 'Cadeia de certificado', '1', 'TEXTAREA', '', 255, 'Cadeia de certificado', 11), ('20373585000798', 'certDiasAlerta', 'empresa', '', 'Dias para envio de alerta do Certificado', '1', 'TEXT', '', 15, 'Quantidade de dias para alerta do vencimento do certificado.', 8), ('20373585000798', 'certEmailAlerta', 'empresa', '', 'Emails para envio de alerta do Certificado', '1', 'TEXT', '', 15, 'Emails para alerta do vencimento do certificado.', 8), ('20373585000798', 'certPassword', 'empresa', '123', 'Senha Certificado', '1', 'PASSWORD', '', 255, 'Senha do Certificado Digital', 5), ('20373585000798', 'certPfxName', 'empresa', 'certf.arese1.pfx', 'Certificado', '1', 'TEXT', '', 255, 'Nome do Arquivo do Certificado digital (.pfx)', 3), ('20373585000798', 'certPhrase', 'empresa', '', 'Phrase Certificado', '1', 'TEXT', '', 255, 'Phrase chave do Certificado Digital', 6), ('20373585000798', 'cnpj', 'empresa', '20373585000798', 'CNPJ', '1', 'TEXT', '', 255, 'CNPJ da Empresa', 1), ('20373585000798', 'connectWS.password', 'connectWS', '', 'Senha', '1', 'PASSWORD', '', 255, 'Senha de login no webservice', 2), ('20373585000798', 'connectWS.user', 'connectWS', '', 'Usuário', '1', 'TEXT', '', 255, 'Usuário de login no webservice', 1), ('20373585000798', 'conting.detServAut', 'contingencia', '', 'Determinação dos Servidores das Autoridades', '1', 'SELECT', '1[=]SEFAZ tem prioridade, SVC também será chamado[|]2[=]SVC tem prioridade, SEFAZ também será chamado[|]3[=]Apenas SEFAZ será chamado', 455, 'Determinação dos Servidores das Autoridades', 6), ('20373585000798', 'conting.tipoConting', 'contingencia', '', 'Tipo de Contingência', '1', 'SELECT', 'SVCAN[=]SVCAN - Ambiente Nacional[|]SVCRS[=]SVCRS - Rio grande do Sul', 255, 'Tipo de Webservice na Contingência', 6), ('20373585000798', 'customDanfe.infComp', 'customizacao.danfe', '', 'Informações Complementares', '1', 'TEXTAREA', '', 0, 'Informações complementares na tag infCpl<br/>Comandos:<br/>- NOT_INITIAL: Indica a uma variável(linha) que não sera exibida se o campo for vazio/zerada. exemplo: [[tag.key:NOT_INITIAL]]<br/>- {Q}: Gera uma quebra de linha no texto.', 6), ('20373585000798', 'customDanfe.permInfAdicItem', 'customizacao.danfe', '1', 'Permitir informações Adicionais do Item', '1', 'SELECT', '0[=]Não[|]1[=]Sim', 255, 'Permitir exibição das informações Adicionais do item no DANFE', 7), ('20373585000798', 'customDanfe.permPartilhaItem', 'customizacao.danfe', '1', 'Permitir dados da Partilha ICMS no Item', '1', 'SELECT', '0[=]Não[|]1[=]Sim', 255, 'Permitir exibição dos dados da Partilha ICMS no item do DANFE (NT003/2015)', 6), ('20373585000798', 'emailEmitente', 'empresa', '', 'Email do Emitente no Cabeçalho do Danfe', '1', 'TEXT', '', 255, 'Email do Emitente no Cabeçalho do Danfe', 9), ('20373585000798', 'envio.copiaDanfe', 'envio', '', 'Envio do Danfe com Cópia', '1', 'TEXT', '', 255, 'Email com Cópia no envio do DANFE e XML', 6), ('20373585000798', 'envio.mail.smtp.auth', 'envio', '1', 'SMPT AUTH', '1', 'SELECT', '1[=]Sim[|]0[=]Não', 255, '', 8), ('20373585000798', 'envio.mail.smtp.email', 'envio', '', 'SMPT EMAIL', '1', 'TEXT', '', 255, '', 11), ('20373585000798', 'envio.mail.smtp.host', 'envio', '', 'SMPT HOST', '1', 'TEXT', '', 255, '', 7), ('20373585000798', 'envio.mail.smtp.name', 'envio', '', 'SMPT NAME', '1', 'TEXT', '', 255, '', 11), ('20373585000798', 'envio.mail.smtp.password', 'envio', '', 'SMPT PASSWORD', '1', 'TEXT', '', 255, '', 10), ('20373585000798', 'envio.mail.smtp.port', 'envio', '', 'SMPT PORT', '1', 'TEXT', '', 255, '', 11), ('20373585000798', 'envio.mail.smtp.secure', 'envio', '', 'SMPT SEGURANÇA', '1', 'TEXT', '', 255, '', 11), ('20373585000798', 'envio.mail.smtp.user', 'envio', '', 'SMPT USER', '1', 'TEXT', '', 255, '', 9), ('20373585000798', 'envio.sendEmail', 'envio', '', 'Envio de email para o cliente', '1', 'SELECT', '1[=]Sim[|]0[=]Não', 100, 'Envio de email para cliente', 3), ('20373585000798', 'inboudCTE.boxMail', 'inbound.imap.cte', '', 'IMAP Box Default ', '1', 'TEXT', '', 255, 'Caixa Principal do Servidor IMAP', 6), ('20373585000798', 'inboudCTE.imapCertSecurity', 'inbound.imap.cte', '', 'IMAP Certificate Security', '1', 'TEXT', '', 255, 'Certificado de Segurança do Servidor IMAP', 5), ('20373585000798', 'inboudCTE.imapHost', 'inbound.imap.cte', '', 'IMAP Host', '1', 'TEXT', '', 255, 'Host do Servidor IMAP', 1), ('20373585000798', 'inboudCTE.imapPassword', 'inbound.imap.cte', '', 'IMAP Password', '1', 'PASSWORD', '', 255, 'Senha do Servidor IMAP', 4), ('20373585000798', 'inboudCTE.imapPort', 'inbound.imap.cte', '', 'IMAP Port', '1', 'TEXT', '', 255, 'Porta do Servidor IMAP', 2), ('20373585000798', 'inboudCTE.imapUser', 'inbound.imap.cte', '', 'IMAP User', '1', 'TEXT', '', 255, 'Usuário do Servidor IMAP', 3), ('20373585000798', 'inboudCTE.moveToBox', 'inbound.imap.cte', '', 'Mover para a Caixa', '1', 'TEXT', '', 255, 'Mover emails lidos para outra caixa. (Vazio não move)', 6), ('20373585000798', 'inboudCTE.tpProtocol', 'inbound.imap.cte', '', 'Tipo de Protocolo', '1', 'SELECT', 'pop[=]POP3[|]imap[=]IMAP', 255, 'Mover emails lidos para outra caixa. (Vazio não move)', 6), ('20373585000798', 'inboudCTE.tpServer', 'inbound.imap.cte', '', 'Tipo de Servidor', '1', 'SELECT', '0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite', 255, 'Tipo do Servidor de Email', 6), ('20373585000798', 'inboudNFS.boxMail', 'inbound.imap.nfs', '', 'IMAP Box Default ', '1', 'TEXT', '', 255, 'Caixa Principal do Servidor IMAP', 6), ('20373585000798', 'inboudNFS.imapCertSecurity', 'inbound.imap.nfs', '', 'IMAP Certificate Security', '1', 'TEXT', '', 255, 'Certificado de Segurança do Servidor IMAP', 5), ('20373585000798', 'inboudNFS.imapHost', 'inbound.imap.nfs', '', 'IMAP Host', '1', 'TEXT', '', 255, 'Host do Servidor IMAP', 1), ('20373585000798', 'inboudNFS.imapPassword', 'inbound.imap.nfs', '', 'IMAP Password', '1', 'PASSWORD', '', 255, 'Senha do Servidor IMAP', 4), ('20373585000798', 'inboudNFS.imapPort', 'inbound.imap.nfs', '', 'IMAP Port', '1', 'TEXT', '', 255, 'Porta do Servidor IMAP', 2), ('20373585000798', 'inboudNFS.imapUser', 'inbound.imap.nfs', '', 'IMAP User', '1', 'TEXT', '', 255, 'Usuário do Servidor IMAP', 3), ('20373585000798', 'inboudNFS.moveToBox', 'inbound.imap.nfs', '', 'Mover para a Caixa', '1', 'TEXT', '', 255, 'Mover emails lidos para outra caixa. (Vazio não move)', 6), ('20373585000798', 'inboudNFS.tpProtocol', 'inbound.imap.nfs', '', 'Tipo de Protocolo', '1', 'SELECT', 'pop[=]POP3[|]imap[=]IMAP', 255, 'Mover emails lidos para outra caixa. (Vazio não move)', 6), ('20373585000798', 'inboudNFS.tpServer', 'inbound.imap.nfs', '', 'Tipo de Servidor', '1', 'SELECT', '0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite', 255, 'Tipo do Servidor de Email', 6), ('20373585000798', 'inbound.boxMail', 'inbound.imap', '', 'IMAP Box Default ', '1', 'TEXT', '', 255, 'Caixa Principal do Servidor IMAP', 6), ('20373585000798', 'inbound.imapCertSecurity', 'inbound.imap', '', 'IMAP Certificate Security', '1', 'TEXT', '', 255, 'Certificado de Segurança do Servidor IMAP', 5), ('20373585000798', 'inbound.imapHost', 'inbound.imap', '', 'IMAP Host', '1', 'TEXT', '', 255, 'Host do Servidor IMAP', 1), ('20373585000798', 'inbound.imapPassword', 'inbound.imap', '', 'IMAP Password', '1', 'PASSWORD', '', 255, 'Senha do Servidor IMAP', 4), ('20373585000798', 'inbound.imapPort', 'inbound.imap', '', 'IMAP Port', '1', 'TEXT', '', 255, 'Porta do Servidor IMAP', 2), ('20373585000798', 'inbound.imapUser', 'inbound.imap', '', 'IMAP User', '1', 'TEXT', '', 255, 'Usuário do Servidor IMAP', 3), ('20373585000798', 'inbound.impCTE', 'inbound.imap.cte', '', 'Importar CT-e', '1', 'SELECT', '0[=]Não[|]1[=]Sim', 255, 'Importar CT-e da caixa de Email', 6), ('20373585000798', 'inbound.impCTEDeleteEmail', 'inbound.imap.cte', '', 'Deletar emails após a leitura', '1', 'SELECT', '0[=]Não[|]1[=]Sim', 255, 'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)', 7), ('20373585000798', 'inbound.impNFEDeleteEmail', 'inbound.imap', '', 'Deletar emails após a leitura', '1', 'SELECT', '0[=]Não[|]1[=]Sim', 255, 'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)', 7), ('20373585000798', 'inbound.impNfeWs', 'inbound.imap', '1', 'Importar NF-e WS', '1', 'SELECT', '0[=]Não[|]1[=]Sim', 255, 'Importar NF-e do Webservice', 6), ('20373585000798', 'inbound.impNFS', 'inbound.imap.nfs', '', 'Importar NFS-e', '1', 'SELECT', '0[=]Não[|]1[=]Sim', 255, 'Importar NFS-e da caixa de Email', 6), ('20373585000798', 'inbound.impNFSDeleteEmail', 'inbound.imap.nfs', '', 'Deletar emails após a leitura', '1', 'SELECT', '0[=]Não[|]1[=]Sim', 255, 'Deletar emails após a leitura e Importação(E-MAILS EXCLUÍDOS NÃO PODEM SER RECUPERADS)', 7), ('20373585000798', 'inbound.moveToBox', 'inbound.imap', '', 'Mover para a Caixa', '1', 'TEXT', '', 255, 'Mover emails lidos para outra caixa. (Vazio não move)', 6), ('20373585000798', 'inbound.tpProtocol', 'inbound.imap', 'imap', 'Tipo de Protocolo', '1', 'SELECT', 'pop[=]POP3[|]imap[=]IMAP', 255, 'Mover emails lidos para outra caixa. (Vazio não move)', 6), ('20373585000798', 'inbound.tpServer', 'inbound.imap', '', 'Tipo de Servidor', '1', 'SELECT', '0[=]Outros[|]1[=]Windows Exchange[|]3[=]G Suite', 255, 'Tipo do Servidor de Email', 6), ('20373585000798', 'intervaloConsultaNfe', 'geral', '5', 'Intervalo de Consulta das NFes (Minutos)', '1', 'TEXT', '', 255, 'Tempo de intervalo para consulta das Notas Fiscais pela Chave de Acesso', 3), ('20373585000798', 'outForceConsChv', 'geral', '0', 'Sempre Consultar NF-e pela Chave', '1', 'SELECT', '0[=]Não[|]1[=]Sim', 255, 'Sempre consulta a Chave da NF-e antes do envio do XML a Sefaz', 6), ('20373585000798', 'pathCertsFiles', 'empresa', '', 'Diretorio do Certificado', '1', 'TEXT', '', 255, 'Diretório do arquivo do Certificado Digital', 4), ('20373585000798', 'pathCLeFiles', 'cle', '', 'Diretorio de Cle', '0', 'TEXT', '', 255, '', 1), ('20373585000798', 'pathCTeFiles', 'cte', '', 'Diretorio de CTE', '0', 'TEXT', '', 255, '', 1), ('20373585000798', 'pathMDFeFiles', 'mdfe', '', 'Diretorio de MDFe', '0', 'TEXT', '', 255, '', 1), ('20373585000798', 'pathNFeFiles', 'nfe', '', 'Diretorio de NFE', '1', 'TEXT', '', 255, 'Diretorio de armazenamento da NFe', 1), ('20373585000798', 'pathNFSeFiles', 'nfse', '', 'Diretorio de NFSE', '0', 'TEXT', '', 255, '', 1), ('20373585000798', 'pathXmlUrlFileCLe', 'geral', 'cle_ws1.xml', 'XML do Modelo de Cle', '0', 'TEXT', '', 255, '', 1), ('20373585000798', 'pathXmlUrlFileCTe', 'geral', 'cte_ws1.xml', 'XML do Modelo de Cte', '0', 'TEXT', '', 255, '', 1), ('20373585000798', 'pathXmlUrlFileMDFe', 'geral', 'mdfe_ws1.xml', 'XML do Modelo de MDFe', '0', 'TEXT', '', 255, '', 1), ('20373585000798', 'pathXmlUrlFileNFe', 'geral', 'nfe_ws3_mod55.xml', 'XML do Modelo de Nfe', '1', 'TEXT', '', 255, 'Configuração do XML do Modeloo da NFe', 3), ('20373585000798', 'pathXmlUrlFileNFSe', 'geral', '', 'XML do Modelo de NFSe', '0', 'TEXT', '', 255, '', 1), ('20373585000798', 'pendErpContador', 'geral', '5', 'Contador de Atualização Automatica ERP', '1', 'TEXT', '', 255, '', 1), ('20373585000798', 'razaosocial', 'empresa', 'Kohler Produtos Para Cozinhas e Banheiros LTDA', 'Razao Social', '1', 'TEXT', '', 255, 'Razão Social da Empresa', 2), ('20373585000798', 'schemesCLe', 'cle', 'CLe_100', 'Schema de CLE', '0', 'TEXT', '', 255, '', 1), ('20373585000798', 'schemesCTe', 'cte', 'PL_CTE_104', 'Schema de CTE', '0', 'TEXT', '', 255, '', 1), ('20373585000798', 'schemesMDFe', 'mdfe', 'MDFe_100', 'Schema de MDFE', '0', 'TEXT', '', 255, '', 1), ('20373585000798', 'schemesNFe', 'nfe', 'PL_008i2', 'Schema de NFE', '1', 'TEXT', '', 255, 'Schema de Validação da NF-e', 1), ('20373585000798', 'schemesNFSe', 'nfse', '', 'Schema de NFSE', '0', 'TEXT', '', 255, '', 1), ('20373585000798', 'sefazCnpjCpfAutorizados', 'nfe', '', 'CPF/CPNJ autorizado', '1', 'TEXT', '', 255, 'CPF ou CNPJ autorizados a fazer download do XML (Se for mais de um separar por vírgula)', 1), ('20373585000798', 'sefazStatusDays', 'nfe', '', 'Quantidade de dias', '1', 'TEXT', '', 255, 'Quantidade de dias do historico de status sefaz', 1), ('20373585000798', 'siglaUF', 'empresa', 'MG', 'Estado (UF)', '1', 'TEXT', '', 255, 'Sigla da UF da Empresa', 7), ('20373585000798', 'siteUrl', 'geral', '', 'URL do Sistema', '1', 'TEXT', '', 255, 'URL do Sistema da API', 2), ('20373585000798', 'tpAmb', 'geral', '1', 'Tipo de Ambiente', '1', 'SELECT', '1[=]Produção[|]2[=]Homologação', 255, 'Tipo de Ambiente dos Webservices', 1);
