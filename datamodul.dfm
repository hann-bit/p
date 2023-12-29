object DataModule_warung: TDataModule_warung
  OldCreateOrder = False
  Height = 580
  Width = 1086
  object ZConnection: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_warung'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'C:\BERKAS IAN\libmysql.dll'
    Left = 96
    Top = 40
  end
  object ZQuerypelanggan: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM  pelanggan')
    Params = <>
    Left = 40
    Top = 128
  end
  object ZQcommand_sql: TZQuery
    Connection = ZConnection
    Params = <>
    Left = 176
    Top = 40
  end
  object DataSourcepelanggan: TDataSource
    DataSet = ZQuerypelanggan
    Left = 176
    Top = 128
  end
  object ZQuerysupplier: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM supplier')
    Params = <>
    Left = 40
    Top = 184
  end
  object DataSourcesupplier: TDataSource
    DataSet = ZQuerysupplier
    Left = 176
    Top = 184
  end
  object ZQuerydaftarbarang: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '  `daftar_barang`.*,'
      '  `jenis_barang`.*'
      'FROM'
      '  `db_warung`.`jenis_barang`'
      '  INNER JOIN `db_warung`.`daftar_barang`'
      '    ON ('
      
        '      `jenis_barang`.`id_jenis_barang` = `daftar_barang`.`id_jen' +
        'is_barang`'
      '    );')
    Params = <>
    Left = 40
    Top = 232
  end
  object DataSourcedaftarbarang: TDataSource
    DataSet = ZQuerydaftarbarang
    Left = 176
    Top = 232
  end
  object DataSourcejenisbarang: TDataSource
    DataSet = ZQueryjenisbarang
    Left = 176
    Top = 288
  end
  object ZQueryjenisbarang: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM jenis_barang')
    Params = <>
    Left = 40
    Top = 288
  end
  object DataSourceDETAILbarang: TDataSource
    DataSet = ZQueryDETAILbarang
    Left = 176
    Top = 344
  end
  object ZQueryDETAILbarang: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '  `detail_barang`.*,'
      '  `daftar_barang`.*,'
      '  `jenis_barang`.*'
      'FROM'
      '  `db_warung`.`daftar_barang`'
      '  INNER JOIN `db_warung`.`detail_barang`'
      '    ON ('
      '      `daftar_barang`.`id_barang` = `detail_barang`.`id_barang`'
      '    )'
      '  INNER JOIN `db_warung`.`jenis_barang`'
      '    ON ('
      
        '      `jenis_barang`.`id_jenis_barang` = `daftar_barang`.`id_jen' +
        'is_barang`'
      '    );')
    Params = <>
    Left = 48
    Top = 344
  end
  object ZQueryPEMBELIAN: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '  `pembelian`.*,'
      '  `supplier`.*'
      'FROM'
      '  `db_warung`.`supplier`'
      '  INNER JOIN `db_warung`.`pembelian`'
      '    ON ('
      '      `supplier`.`id` = `pembelian`.`id_supplier`);')
    Params = <>
    Left = 40
    Top = 416
  end
  object DataSourcePEMBELIAN: TDataSource
    DataSet = ZQueryPEMBELIAN
    Left = 176
    Top = 400
  end
  object ZQueryTMP_PEMBELIAN: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '  `temp_pembelian`.*,'
      '  `detail_barang`.*,'
      '  `daftar_barang`.*,'
      '  `jenis_barang`.*'
      'FROM'
      '  `db_warung`.`detail_barang`'
      '  INNER JOIN `db_warung`.`temp_pembelian`'
      
        '    ON (`detail_barang`.`id_detail_barang` = `temp_pembelian`.`i' +
        'd_detail_barang` )'
      '  INNER JOIN `db_warung`.`daftar_barang`'
      
        '    ON (`daftar_barang`.`id_barang` = `detail_barang`.`id_barang' +
        '`)'
      '  INNER JOIN `db_warung`.`jenis_barang`'
      
        '    ON (`jenis_barang`.`id_jenis_barang` = `daftar_barang`.`id_j' +
        'enis_barang`);')
    Params = <>
    Left = 40
    Top = 472
    object ZQueryTMP_PEMBELIANharga_beli: TIntegerField
      FieldName = 'harga_beli'
      Required = True
      DisplayFormat = 'Rp  #,###,##'
    end
    object ZQueryTMP_PEMBELIANjumlah: TIntegerField
      FieldName = 'jumlah'
      Required = True
    end
    object ZQueryTMP_PEMBELIANtotal_harga: TIntegerField
      FieldName = 'total_harga'
      Required = True
      DisplayFormat = 'Rp  #,###,##'
    end
    object ZQueryTMP_PEMBELIANid_barang: TWideStringField
      FieldName = 'id_barang'
      Required = True
      Size = 50
    end
    object ZQueryTMP_PEMBELIANisi: TIntegerField
      FieldName = 'isi'
      Required = True
    end
    object ZQueryTMP_PEMBELIANsatuan: TWideStringField
      FieldName = 'satuan'
      Required = True
      Size = 10
    end
    object ZQueryTMP_PEMBELIANvariant: TWideStringField
      FieldName = 'variant'
      Required = True
      Size = 50
    end
    object ZQueryTMP_PEMBELIANexp_barang: TDateField
      FieldName = 'exp_barang'
      Required = True
    end
    object ZQueryTMP_PEMBELIANnama: TWideStringField
      FieldName = 'nama'
      Required = True
      Size = 100
    end
    object ZQueryTMP_PEMBELIANid_jenis_barang: TWideStringField
      FieldName = 'id_jenis_barang'
      Required = True
      Size = 100
    end
    object ZQueryTMP_PEMBELIANbrand: TWideStringField
      FieldName = 'brand'
      Required = True
      Size = 100
    end
    object ZQueryTMP_PEMBELIANjenis_barang: TWideStringField
      FieldName = 'jenis_barang'
      Required = True
      Size = 30
    end
    object ZQueryTMP_PEMBELIANid_detail_barang: TIntegerField
      FieldName = 'id_detail_barang'
      Required = True
    end
    object ZQueryTMP_PEMBELIANstatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'status'
      Calculated = True
    end
  end
  object DataSourceTMP_PEMBELIAN: TDataSource
    DataSet = ZQueryTMP_PEMBELIAN
    Left = 176
    Top = 464
  end
  object ZQueryDETAILPEMBELIAN: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '  `detail_pembelian`.*,'
      '  `pembelian`.*,'
      '  `detail_barang`.*,'
      '  `daftar_barang`.*,'
      '  `supplier`.*,'
      '  `jenis_barang`.*'
      'FROM'
      '  `db_warung`.`pembelian`'
      '  INNER JOIN `db_warung`.`detail_pembelian`'
      
        '    ON (`pembelian`.`no_faktur_pembelian` = `detail_pembelian`.`' +
        'no_faktur_pembelian`)'
      '  INNER JOIN `db_warung`.`supplier`'
      '    ON (`pembelian`.`id_supplier` = `supplier`.`id`)'
      '  INNER JOIN `db_warung`.`detail_barang`'
      
        '    ON (`detail_barang`.`id_detail_barang` = `detail_pembelian`.' +
        '`id_detail_barang`)'
      '  INNER JOIN `db_warung`.`daftar_barang`'
      
        '    ON (`daftar_barang`.`id_barang` = `detail_barang`.`id_barang' +
        '`)'
      'INNER JOIN `db_warung`.`jenis_barang`'
      
        '    ON (jenis_barang.id_jenis_barang = daftar_barang.id_jenis_ba' +
        'rang);')
    Params = <>
    Left = 368
    Top = 128
  end
  object DataSourceDETAILPEMBELIAN: TDataSource
    DataSet = ZQueryDETAILPEMBELIAN
    Left = 472
    Top = 112
  end
  object DataSourceSTOK: TDataSource
    DataSet = ZQuerySTOK
    Left = 456
    Top = 184
  end
  object ZQuerySTOK: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '  `stok_barang`.*,'
      '  `detail_barang`.*,'
      '  `daftar_barang`.*,'
      '  `jenis_barang`.*'
      'FROM'
      '  `db_warung`.`detail_barang`'
      '  INNER JOIN `db_warung`.`stok_barang`'
      
        '    ON (`detail_barang`.`id_detail_barang` = `stok_barang`.`id_d' +
        'etail_barang`)'
      '  INNER JOIN `db_warung`.`daftar_barang`'
      
        '    ON (`daftar_barang`.`id_barang` = `detail_barang`.`id_barang' +
        '`)'
      '  INNER JOIN `db_warung`.`jenis_barang`'
      
        '    ON (`jenis_barang`.`id_jenis_barang` = `daftar_barang`.`id_j' +
        'enis_barang`);')
    Params = <>
    Left = 368
    Top = 184
    object ZQuerySTOKid_stok: TWideStringField
      FieldName = 'id_stok'
      Required = True
      Size = 50
    end
    object ZQuerySTOKid_detail_barang: TIntegerField
      FieldName = 'id_detail_barang'
      Required = True
    end
    object ZQuerySTOKharga: TIntegerField
      FieldName = 'harga'
      Required = True
    end
    object ZQuerySTOKjumlah_stok: TIntegerField
      FieldName = 'jumlah_stok'
      Required = True
    end
    object ZQuerySTOKstatus: TWideStringField
      FieldName = 'status'
    end
    object ZQuerySTOKid_detail_barang_1: TIntegerField
      FieldName = 'id_detail_barang_1'
      Required = True
    end
    object ZQuerySTOKid_barang: TWideStringField
      FieldName = 'id_barang'
      Required = True
      Size = 50
    end
    object ZQuerySTOKisi: TIntegerField
      FieldName = 'isi'
      Required = True
    end
    object ZQuerySTOKvariant: TWideStringField
      FieldName = 'variant'
      Required = True
      Size = 50
    end
    object ZQuerySTOKsatuan: TWideStringField
      FieldName = 'satuan'
      Required = True
      Size = 50
    end
    object ZQuerySTOKexp_barang: TDateField
      FieldName = 'exp_barang'
      Required = True
    end
    object ZQuerySTOKid_barang_1: TWideStringField
      FieldName = 'id_barang_1'
      Required = True
      Size = 50
    end
    object ZQuerySTOKnama: TWideStringField
      FieldName = 'nama'
      Required = True
      Size = 50
    end
    object ZQuerySTOKid_jenis_barang: TWideStringField
      FieldName = 'id_jenis_barang'
      Required = True
      Size = 50
    end
    object ZQuerySTOKbrand: TWideStringField
      FieldName = 'brand'
      Required = True
      Size = 50
    end
    object ZQuerySTOKid_jenis_barang_1: TIntegerField
      FieldName = 'id_jenis_barang_1'
      Required = True
    end
    object ZQuerySTOKjenis_barang: TWideStringField
      FieldName = 'jenis_barang'
      Required = True
      Size = 30
    end
  end
  object ZQueryTEMPPENJUALAN: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '  `temp_penjualan`.*,'
      '  `detail_barang`.*,'
      '  `daftar_barang`.*,'
      '  `jenis_barang`.*'
      'FROM'
      '  `db_warung`.`detail_barang`'
      '  INNER JOIN `db_warung`.`temp_penjualan`'
      
        '    ON (`detail_barang`.`id_detail_barang` = `temp_penjualan`.`i' +
        'd_detail_barang`)'
      '  INNER JOIN `db_warung`.`daftar_barang`'
      
        '    ON (`daftar_barang`.`id_barang` = `detail_barang`.`id_barang' +
        '`)'
      '  INNER JOIN `db_warung`.`jenis_barang`'
      
        '    ON (`jenis_barang`.`id_jenis_barang` = `daftar_barang`.`id_j' +
        'enis_barang`);')
    Params = <>
    Left = 360
    Top = 320
  end
  object DataSourceTEMPPENJUALAN: TDataSource
    DataSet = ZQueryTEMPPENJUALAN
    Left = 504
    Top = 320
  end
  object ZQueryPENJUALAN: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '  `penjualan`.*,'
      '  `pelanggan`.*'
      'FROM'
      '  `db_warung`.`pelanggan`'
      '  INNER JOIN `db_warung`.`penjualan`'
      
        '    ON (`pelanggan`.`id_pelanggan` = `penjualan`.`id_pelanggan`)' +
        ';')
    Params = <>
    Left = 360
    Top = 272
  end
  object DataSourcePENJUALAN: TDataSource
    DataSet = ZQueryPENJUALAN
    Left = 488
    Top = 272
  end
  object ZQueryDETAILPENJUALAN: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '  `detail_penjualan`.*,'
      '  `detail_barang`.*,'
      '  `daftar_barang`.*,'
      '  `jenis_barang`.*,'
      '  `penjualan`.*,'
      '  `pelanggan`.*'
      'FROM'
      '  `db_warung`.`daftar_barang`'
      '  INNER JOIN `db_warung`.`detail_barang`'
      
        '    ON (`daftar_barang`.`id_barang` = `detail_barang`.`id_barang' +
        '`)'
      '  INNER JOIN `db_warung`.`detail_penjualan`'
      
        '    ON (`detail_barang`.`id_detail_barang` = `detail_penjualan`.' +
        '`id_detail_barang`)'
      '  INNER JOIN `db_warung`.`jenis_barang`'
      
        '    ON (`jenis_barang`.`id_jenis_barang` = `daftar_barang`.`id_j' +
        'enis_barang`)'
      '  INNER JOIN `db_warung`.`penjualan`'
      
        '    ON (`penjualan`.`no_faktur_penjualan` = `detail_penjualan`.`' +
        'no_faktur_penjualan`)'
      '  INNER JOIN `db_warung`.`pelanggan`'
      
        '    ON (`penjualan`.`id_pelanggan` = `pelanggan`.`id_pelanggan`)' +
        ';')
    Params = <>
    Left = 360
    Top = 376
    object ZQueryDETAILPENJUALANno_faktur_penjualan: TWideStringField
      FieldName = 'no_faktur_penjualan'
      Required = True
      Size = 50
    end
    object ZQueryDETAILPENJUALANid_detail_barang: TIntegerField
      FieldName = 'id_detail_barang'
      Required = True
    end
    object ZQueryDETAILPENJUALANharga_barang: TIntegerField
      FieldName = 'harga_barang'
      Required = True
    end
    object ZQueryDETAILPENJUALANjumlah: TIntegerField
      FieldName = 'jumlah'
      Required = True
    end
    object ZQueryDETAILPENJUALANtotal_harga: TIntegerField
      FieldName = 'total_harga'
      Required = True
    end
    object ZQueryDETAILPENJUALANid_detail_barang_1: TIntegerField
      FieldName = 'id_detail_barang_1'
      Required = True
    end
    object ZQueryDETAILPENJUALANid_barang: TWideStringField
      FieldName = 'id_barang'
      Required = True
      Size = 50
    end
    object ZQueryDETAILPENJUALANisi: TIntegerField
      FieldName = 'isi'
      Required = True
    end
    object ZQueryDETAILPENJUALANvariant: TWideStringField
      FieldName = 'variant'
      Required = True
      Size = 50
    end
    object ZQueryDETAILPENJUALANsatuan: TWideStringField
      FieldName = 'satuan'
      Required = True
      Size = 50
    end
    object ZQueryDETAILPENJUALANexp_barang: TDateField
      FieldName = 'exp_barang'
      Required = True
    end
    object ZQueryDETAILPENJUALANid_barang_1: TWideStringField
      FieldName = 'id_barang_1'
      Required = True
      Size = 50
    end
    object ZQueryDETAILPENJUALANnama: TWideStringField
      FieldName = 'nama'
      Required = True
      Size = 50
    end
    object ZQueryDETAILPENJUALANid_jenis_barang: TWideStringField
      FieldName = 'id_jenis_barang'
      Required = True
      Size = 50
    end
    object ZQueryDETAILPENJUALANbrand: TWideStringField
      FieldName = 'brand'
      Required = True
      Size = 50
    end
    object ZQueryDETAILPENJUALANid_jenis_barang_1: TIntegerField
      FieldName = 'id_jenis_barang_1'
      Required = True
    end
    object ZQueryDETAILPENJUALANjenis_barang: TWideStringField
      FieldName = 'jenis_barang'
      Required = True
      Size = 30
    end
    object ZQueryDETAILPENJUALANno_faktur_penjualan_1: TWideStringField
      FieldName = 'no_faktur_penjualan_1'
      Required = True
      Size = 50
    end
    object ZQueryDETAILPENJUALANtanggal_penjualan: TDateField
      FieldName = 'tanggal_penjualan'
      Required = True
    end
    object ZQueryDETAILPENJUALANid_pelanggan: TWideStringField
      FieldName = 'id_pelanggan'
      Required = True
      Size = 50
    end
    object ZQueryDETAILPENJUALANid_pelanggan_1: TIntegerField
      FieldName = 'id_pelanggan_1'
      Required = True
    end
    object ZQueryDETAILPENJUALANnama_1: TWideStringField
      FieldName = 'nama_1'
      Required = True
      Size = 50
    end
    object ZQueryDETAILPENJUALANjenis_kelamin: TWideStringField
      FieldName = 'jenis_kelamin'
      Required = True
    end
    object ZQueryDETAILPENJUALANalamat: TWideStringField
      FieldName = 'alamat'
      Required = True
      Size = 50
    end
    object ZQueryDETAILPENJUALANno_tlpn: TWideStringField
      FieldName = 'no_tlpn'
      Required = True
      Size = 15
    end
  end
  object DataSourceDETAILPENJUALAN: TDataSource
    DataSet = ZQueryDETAILPENJUALAN
    Left = 504
    Top = 376
  end
  object FRDB_DATAPELANGGAN: TfrxDBDataset
    UserName = 'FR_PELANGGAN'
    CloseDataSource = False
    DataSource = DataSourcepelanggan
    BCDToCurrency = False
    Left = 744
    Top = 40
  end
  object FR_PELANGGAN: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45284.749225497700000000
    ReportOptions.LastChange = 45285.526990347200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 632
    Top = 40
    Datasets = <
      item
        DataSet = FRDB_DATAPELANGGAN
        DataSetName = 'FR_PELANGGAN'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 200.315090000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Align = baLeft
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 105.826840000000000000
          Height = 113.385900000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000020000
            0002000806000000F478D4FA0000000473424954080808087C08648800000009
            7048597300000B1300000B1301009A9C180000001974455874536F6674776172
            65007777772E696E6B73636170652E6F72679BEE3C1A000044344944415478DA
            EDDD097C14E5FDF8F1E799D9CD1D4005AC12AC0A5ED57AD7EBA72D821002626B
            5B94D3DADA7ADF577FD5B6A697BFB68AF759FB570BA148D3DA0324A008D4B6D6
            6AF1AA5645102B413944B972EDEECCF37F16A5450B339364779F67B29F775F69
            164866BFB366773E3BD99D9102008022A1F698B0B7A79C83A512FB2921F7154A
            EDABA4D8590A51A5FFB95A7FF4D61FEDFA6373F6434AB15E29B54209F19A14CE
            12E5FBAF269CD4B3B2B9B1CDF4BA7497343D000000F9A2F61ABFAB97726B8523
            860A2587EABF199883C576E88FA7F40674A1EFABF989B7F7F9AB14F5BEE975ED
            2C020000D0A3A83DCF2CF352DE70E1AAC942892FE8BF4AE6F92A572AA17EA394
            BCBF6465C30BA6D73F2A020000D023E80DFF273299CCE57AC376B6F86057BE81
            21C49FF5FFFFD85DD9304766FF6431020000106B6AF771033D2771B5BE7896FE
            28373D4F96DEB83EA7B7FE3F729B1B1EB63504080000402CA923CE4EFAAB5BCF
            D75BD71F8A0F5EC4671F25FEEC49757E69F3F47F981EE5E308000040ECA4074C
            385148F72E29D4FEA6678920A394BC35916AAF976B1B379B1E662B020000101B
            4A0C49646A6ABEAD375EDFD17F744CCFD3B9D9C512A5C469B6BC5090000000C4
            821A30B1C6137286DE721D6F7A966E68D71BDEFF759B1B6E353D08010000B05E
            AA66F2D18E50B3F5C5BEA667C90D799FDBDC7E9E148D9EB1094CDF0400000449
            0F98384C4AF95BF1C191FA7A0E2966B9AAE37453471524000000D6CA0C9C3C4E
            28F50B7DB1C4F42C79F2845BD2718A7CA37143A1AF980000005829B3FBE431C2
            510FEB8B09D3B3E4D91FDD4462A47CF3C1F6425E29010000B04E6AC0C4631C29
            E7EB8B95A667290825FEE0AE6CFE92148B3285BA4A02000060958E3DBE72A0EB
            7BD943EAF6313D4B412971576265C30585BA3A020000600DB5EBE4CA4C523DAD
            374E9F323D8B991B407C4547C0D4425C15010000B04666E0A407B31B41D37318
            D4E27AF233F29D69AFE4FB8A08000080153203267E4548F9A0E9394CD31BE67F
            3889C451F97E5120010000304E0D3863174FFAAFE98BBB989EC5067AE35CEF36
            377C2FCFD701008059ECFAFF2F1DAE720E962BA72EC9D71510000000A3D27B9C
            71BCF4FD2704DBA48F51F312CDD347E66BE9DCD80000A3323593FEA23F1D677A
            0E1B29258725574E5B908F651300000063D2BB9F719274FCC74CCF61B10589E6
            8661F9583001000030463FFB5FA83F0D313D87CD94E39C907C6BEA9F73BD5C02
            00006044AA66C2518E70FE667A0EFBC9D989E6696372BE54D3AB0500284E9981
            93EE114A9C637A8E18F05C570C94FF6A7827970B2500000005A70E1C5BE26D28
            7D5BF0BEFF48A41457B82B1A6ECAE9324DAF1400A0F864064C1E2BA4FA95E939
            E2426FAC9F779B1B0ECBF132010028ACCCC049338512A7999E234E5CE5EC97CB
            03031100008082527ADBE3D54C5AA52FF6373D4B9C4825CF73574EBB2767CB33
            BD420080E2D25173C6C1AEF05F303D47EC48F1ABC48A86D373B73800000AC81B
            30F15225E5CDA6E788A1756EF3E0FE52D4FBB9581801000028A84CCDE4E942A8
            09A6E78823D7F107C9B77EF9462E96450000000ACA1B3869B152E270D373C493
            1A95689EDE948B251100008082F9F005801BF4C56AD3B3C49154EA3277E5F45B
            72B22CD32B0300281EAAE68C019EF09B4DCF115B52DD935831FDBC9C2CCAF4BA
            00008A07C7FFEFAEDC9D1780000000144C7AC0C46152CAF9A6E788B14589E686
            1373B1200200005030998193BE2094F8ADE939E24A4AF1ACBBA2E1889C2CCBF4
            CA00008A4766C0E4C942AAA9A6E7882B25C4EBC9E6867D73B12C020000503099
            8193CF144A3D607A8E185B9E686ED83B170B220000000593A999F425FDE9D7A6
            E7882BBDD17ED16D6E382447CB0200A030D203278E904ACE333D476C29F1E7C4
            CA861372B1280200005030E9DD271D271DF117D373C45853A2B961542E164400
            00000A46D54CD8C7134ECECE695F74A4989A58D1F095DC2C0A008002516248C2
            ABA969D1174B4CCF124752896BDD950DD7E76459A65706C8155557572A7CBF52
            5464A478DF6B918B16B59B9E09C07F4BD74C7E450AB5BFE93962EACB89E686DF
            E46241040062237B1291D4E81107BACA39525FDE4FFFF0EEAB3FEFAF3FEFA6FF
            B94A7F243FF62D19FDB14909B54A2AF9AAFEBC440A6789EFFA8B93471EFB0F59
            9F9B736A03E89C4CCDC4DFE9BBF3E74DCF11479E949F2E5D31EDA55C2C8B0080
            D5546DED6EBE2B3EAF84CC1EFA7288FEE89FA345BFAB7FFA17E93BC04247267E
            2F67CF5E697A5D81E250EF341CF8D6CBE336A4D803D0796D6ED94E3BC9A5B777
            E462610400ACA3860C29F32ACBC60825CFC82680F8EF67F6B996DD13F05729E5
            54A7A5ED9772D1A2CDA66F03A027FA64ED35BB396DEB9E3E7CC3C69A99EB5CD3
            E3C48F54F3132BA60FCFD9E24CAF0FB0951A33A66FC64B5F2285BA50FF68F631
            34C64625C45D898C7FB37CF4D135A66F13A0A7D8A7F6CAD11D9BD6FDC64BB795
            668BFE1FAB5C51AED804758654F21A77E5B4FFCBD9F24CAF10A0468CE89F4938
            DFD43F8CE7E83F569A9EE743AD4AC8FB1242FE58CE99B3CAF430409C0D1A7AD9
            DD1D2DABCF55FE7F5E7633FD3D471CDFE1981E2D567C218F29699E96B3532913
            003046D5D73BDEDFFE364967ED14FDC7BEA6E7D9811629E50F9C8AAA1B6563A3
            677A18204E061F7D512FAFDC7F22D5B2EEBF0E5D7B668B14DFDBC8AF013AE16D
            B7B9630F2972F7384400C088545DDD618E54F7EA8B9F313D4B14FA8EF29CE7A8
            734B66CF7BDAF42C401CEC39E2CAA3FDD6F7E77B1D2D55DBFBF79D7C219E599D
            C8FB0B7C7A0A25C48DC9E686AB72B94C020005E78DAE3B5B2975BB88DF814032
            FA4EF8A3C451C77C9FB710023B3678E8E5D7B5B7ACB94EF999C06DCCCFDF73C5
            F00E36435178C239A4B479EA8BB95C26B73C0A46D5D5F5F2A4BA4F5F3CCDF42C
            DD34DF4DA427C93F3CBEDAF420805DEA9D4143D7CD6EDFBCB62EFB94354C5DBB
            14F7BCCFAF01C2E80DF5F36E73C36179582E907F6AE4C83D338E98973D788FE9
            5972E40DD7F146CAD98FBD6E7A10C006070CBF6A9FD6F6F54F66DA37457E3D8F
            AB23E1F1771362AF8CE9E96DA726279AA737E47AA90400F2AEA3B6F640D79573
            F5C51AD3B3E49412EB7C214F2E696A7ACAF428804983875F39A963F3DA07FC4C
            47A2B3DF3BBE558A1F6F602F408037DCE6E6FDA45894F34C22009057E9D1238E
            934A3E62F07DFDF9B64939E294E4ECB98B4C0F0298B0F7D04BA6756C5E3349A8
            08FBFCB7235B0C7F5C931035BCC76647BE91686EF8793E164C00206F3A468F38
            C855CE13FAE24EA667C9B3561D0127E908F8ABE941804239B0F6B29DDBDADBFF
            DAD1FA7EB77FADC75E80EDD349B524D1BBE3D3F2E5C6543E964F00202FD48811
            03BD84F3177D71A0E9590AE45DD717C7CBB9735F333D08906F834FFA666DAA6D
            CDEFBC545B592E96973D1CD06FD6B9E2F0149BA48F52A312CDD39BF2B5746E6D
            E49C1A3D7AA78CF2FF2685DAC7F42C05B6DC759347C959B3DE353D08902F7B0F
            BBF4FAD4E6B5FFAB7C2FA7DB8FFDD3523CA22320D1B5DF24F43C4ACE4CAC9C36
            2E9F57410020A7B2A7ECF5EA46FE46FF649D6A7A1643B740937BD4B127739C00
            F4347B0E39B34C8AAA85A99675C78828EFF1EB82EF6E74C5592D6C96B4F75DE1
            7C5A364FCDEB594AB9A591535E5DDDA54AAA9B4DCF619254EA9B6ED3BC9F9A9E
            03C895C1275D7E58A67DC3A274474BAF7C5E4F89DE24FDF65D471C942EEA4D53
            F679D49713CDD31ECEF71515F5AD8CDC4A8D1E7184A39C2745FC8EF0976B195F
            C913787B207A827D4EBAF4A2B6CDEB6E515EBA2067EEF9A427C5236B5D515DA4
            BF0A5052DE925C31EDB2425C1701809CD872629FA79FCABE0AFE28D3B3D8400A
            F992B37ACDE172F1E2B4E95980AEA977060D79EFD7EDAD6B4FEDEA5BFCBA6A74
            9B23EE5CEF14E306EA6F6EEF8ECFE6EB55FF1F5784B72FF2C1ABABBD5097EBED
            A6E7B089BE735DEECE995BD4BF0E413CED7BF2B503D21BDF7D2AD5B6C1D8C1BB
            CE6C75C4F73614D5E98297B949EF7FE4F219053BC43801806E53A70CDBD5CB24
            5EEDC107FBE9AA4D6EC2DB5FFEE1B1B74D0F02443578F8E563532DEF4DF7D2ED
            C64FD477CD46479CD3521411B0C615FEF1B2F997053DB43801806E4B8FAABB45
            0A7589E9392C755762CEDC0B4C0F01443168E86577776C5E73AE52761C962FBB
            81CA1E20685C6B8FDE54ADF595185EB2B2E185425F718FBE55917FEAD461BB78
            A9E49B4289AAEE2FAD47EA7013DEDEEC0580CD061F7D512FAFDC7F22D5B2EE10
            D3B37C5C762375C926475CB6B947EE09F897EB8B5AF976839103881100E896F4
            A891D7EB1FA26F999EC3664ACA29C9479AAE343D07B03D7B8EB8F268BFF5FDF9
            5E478BD5117F668B14D76D74454FC90029D4CB8E1223E5CAE9CDE66600BA488D
            1851E9259CEC812A7A9B9EC5722D6E49598DFCDDEFD69B1E04D8D6E0A1975FD7
            DEB2E63AE56762B12D18DE21C594F5AEE81DF7C36C49D1E896AAAFCBA5D3379A
            1D03E8A2CCA8DAC9FA4768AAE939E2417D2331675E5ECEE805745EBD3368E8BA
            D9ED9BD7D6E5E9A07E79B3BB27C41D3A028E88E7790374C2886FBACD0DB79A1E
            242B96B720EC901955F7A8DEB00D373D473CA82774007CCEF414C0FEC3BEB56F
            5BEADDBF64DA37F5353D4B5725A5AB6EDF58F674DDE68EC3444C0E3CA637B6CF
            79BE7356C9DB539F333DCB3633019DA74E19BEBB9771DFD21739876734CA95EE
            60F9C8236F981E04C56BF0F02B27756C5EF3809F49254CCFD2556EB2BCA3B47A
            972FBD3EEFC64754CD847D3C913DFE88AC353D57800D7A437B9DD3DC7187148D
            76BCBDE2430400BAC41B557B8112F20ED373C48954EA4AB769DE14D373A038ED
            3DF492697AE33FA9D047F5CBA56479EFE56E59F531CB1EBD71CDB67F9F1938F1
            74E5CBEBA41407989E711B1D7A0BFBA0EB26EAE59B0FAE323DCCF61000E892CC
            A891BFD19FBE687A8E9879243167EEC9A687407139B0F6B29D5BDBDB9F4AB5BE
            1FDFD3734B479455F4FDEDB245B7EDF03147897AC7DB7DD968E1A8EFE83F7EC6
            E0B41DFAE317AE523F30F90AFF28080074DA87C7FDCF1EAE32B6BF43346493BB
            7AED2E9C1F00853278F8552352ADEFFEDE4BB595999EA5AB9C4489575ED5EFDC
            258F4D89F422DAECA9F43203260C91429E21A4FC92FEABEA42CCA9AF6FB1BEF6
            694E26F94BB9EA81B5466FB4C833039D941A35EA5047F8D6BC90254E94238E4B
            CE9EFB57D373A0E7DB7BD8A5D7A736AFFD5FE57BB17D9C4F9456BD9FACEE77FC
            D2A6FFFB6757BE5FED7E7685E7B47C416FEA46E93F0ED51FBBE570BCB4DE823E
            AD947C3CE1F833E55BD3BB34A349B1FDC180399951B55FD73F3AF7999E238EA4
            5217B94DF378ED04F266CF2167964951B530D5B2EE1811B7F7F8FD9B142595BB
            3CB55CF43D412CAACFE46AA96AB7C907F80935440975B050725FFD57FBE98F01
            11BEB54D6F2C9728295E53BE784D4AF557B723F527B9B671B3E95BAA3B080074
            5ABA6EE40D520A8E6CD7054D2503DFB9B6FCD0735E9C71FEEC6C0E989E073DCB
            A011571CE1B56E5C90EED8D4CBF42C5D251D579557F7FFEEEBF36FFE6121AE2F
            BB974088F6BEA984AC96BE5F257D592D1C3FA31C7F535288F74587BB59AC9EB6
            56C6B7A676880040A765468DFC83FE34C6F41C71F4B7443F7141857E6226E40B
            52A99B7AAF5EFBCB45397C8683E2B5CF49975ED4B6F9BD5B94978AEDD17213C9
            8A56A76AA7BAE58F4E79C2F42CC5800040A7A5478D7C557EB0EB0C9DB44A5688
            93AB876DFB57CBF5F38A5BDDD6C47D8B679DD36A7A3EC451BD3368C87BBF6E6F
            5D7B6A9CDFE25752B1F32B15B2FF512F2FAA8FF56EF5382100D06999512337E8
            4FB1DDC568525A38E2D85EA3B7F74FD9570DDF95F64A6F7BB9F1EBEF999E13F1
            B0EFC9D70EE8D8F8EEDF326D1BA2FC1EDB4A523AA2A4AADF036F2CB8F56BA667
            293604003A25FB161B6FD4C8ECDBD8380260171DA70320B5E3739A6DD6B7F1FD
            092F316571E3396F999E15F61A34E2AAD3D39BD64EF332ED49D3B374959B284D
            9756F61DF7FAFC290F9B9EA5181100E8940FCF00C82EBA6E185E5D2BDE97A187
            2F4F2B211F12D2FFC90B332E7CD9F4CCB0CBA0132FB9A7A3E5DD7394B2EAC8B2
            9D922CEFBDAABCAAEA9857E64CF997E9598A1501804E51A3467DC213FE3BA6E7
            88B32F540D13CD4E45D42FD71D201EF785B8EDC51917CC323D3BCC1A7CF445BD
            BC72FF8954CBBA434CCFD25552FFAFB4BA6FD3B205BB9C2C447DDC4FEC1B6B04
            003A45D5D6EEE6B9F26DD373C4D9A95543C50AA7B22BDFBA582A71DB60BFDFF4
            C6C6D3E2FBD40F5D32F8A4AB8F49B5BF3BDFEB68EDD20F8F0D1C27E997F4EA7F
            F5B2C7A6704E0C0B1000E894B34EF9FE61F7669E7CD6F41C7136A26A8478CF29
            EDCE22960A25EEE8535E71EFA207BFDA6E7A7D907F834FBABCBE7DD39AEF2A3F
            13DBC7EC4469D586AAF2FE435E7EECFAE74DCF820FC4F687098577D8B83B26EB
            4F77FD6DE3ECAAD8BED1D802C7558F12299993D75066CFC7708F284BDDF2FC83
            97AD37BD5EC8877A67D0D075B3DB37AFAD8BEF6168B247F5DBF9859DABFB1DB7
            78563D6F75B508018050C78EBDA9BCD52DFDB1FE61B938FBE73F6E6C12958263
            D77445463AE298EAD1DD5FD0B6A4D8A494784078CE4F5F683C6FA5E975446EEC
            3FEC5BFBB6A7D63D996EDFB88BE959BA4A4A579555F5BF69E9829B3972A88508
            00043A62FCEDFBFBBEF32B25C5A7B7FEDDC39B178A3D7CDE08D015AB9D3231BA
            6A789E96AE524A383313D2BB7EF18C8B5E35BDAEE8BA7D875F31B96DF3DAFBFD
            4C2A617A96AE7293E51DA5D5BB7CE9F579373E627A166C1F01801D3AECF43BCF
            D01BFEBBF4C58FBCE8E896D6A7C5F199D5A6C78BA567127DC57915C7E6FB6A7C
            7DD79EE328F1A367679EFF94E97546E7EC3DF492691D9BD74C8AF351FD92E5BD
            97BB65D5C72C7BF4C635A667C18E1100F82FD95DFE6D6EE9ADFAE237B6F7EF97
            B6FF534C4A2D333D662C3596EC297E52F6E9EE2F2832F9175FAA9F70F221FBED
            35EC9A5D45FABDA7536DEBF7303D4B9749479455F4FDEDB245B77DD1F4280847
            00E0230E3FFDCE037C297EA52F1EB4A3AFF962FA5FE29AB6174D8F1A4B37961D
            241E2AD9CBC455BFA837FF5338F9909D060FBF6A44AAF5DDDF7BA9B632D3B374
            959328F14A2BFB9EBD74FE4DF79B9E05D11000F8B743C7DFF175A1E46DFA6279
            D0D71DE06D10D35A385957577CA3F238F19C6BF4355DCB951237255A13F717D3
            C9879418EB8ADD13FB78AEBBBF0EA1FD94C89E0BDE1F20A4ACD27FAE52425467
            BF4E3F20B6E8CB2D42AACDFA9BDE91D259A27CB5C417E2B564F94EAFCAA5B777
            E47AB641232EBFA163C3EA2B94EFC5F6F1385956BD3651D5E7D8A54D37B06B30
            4662FB0387DCD9EF94FF575D5ED1768FFE719810E5EB1DFDC8387FD33CD14BA5
            4D8F1E2BEDC215437B8D0C3A0F4021AD954ADED1FEDEF219AF3C76C3EBA687C9
            87D4804987B8429DA81C3954FFC87E56FF55EF6E2EB24D7F3CA98361812F9C85
            89956D4F4BD1D8E503321D31A6BEE2BD4D6BFF926A5977A8E9DBAACBF416443F
            EB5FF086EA5B2BD8B3143B0440913B6CEC3D9F52AE97DDE57F6067BE6F4AEB33
            E2739955A6C78F95BF26FA8B8B2A8E363DC647BCBBFC2FFAD95B9F57924ED945
            4B16DEF4B8E979BA4B0D9858E34B39513F63FF9A7E70DB37CF57F78E12AA51F9
            F217256F3774EAE05883465C7184D7BA7141BA63536CCFAA299D2D6FF1FBF6D2
            C76FBEDEF42CE81A02A0887DF82AFFBBF5C5C807A6DF6A5C6AB9B8B2FD25D3AB
            102BB7971E207E513AD8F4181FB176D99F3EB8A01F099225BD569794575FB5E4
            B129D34CCFD559E981936BA55257EB8B270A038F6B528A67955253DCE6D4CCB0
            BD02FB8CB8F2E2B68D6B6E565ECA8A5D415D914856B43A553BD52D7F740ABF0B
            8C3102A0087DB0CBBFFD5E7D717C5797B19BDF267EBF79BE1D3BB363E2CB5527
            8A379D2AD3637CC4BF03601BC9D2EA8D6E59D56DCBE6DFFC1DD3F305D9726AEA
            9A895FD09FAED17F3CD2F43C1F5AAAE7F9B1DBBB7D9A7CB931F5D17FAA77060D
            79EFD71D2D6B4F55F13DAC9F28A9D8F9950AD9FFA89717D57330909823008ACC
            21E3EE3E4C0A7FA6BEB84F7797756FCB93E2086F9DE9558A8597DC9DC49995C7
            9B1EE3BF6C2F00B64A9454B626CAAA1BCA76EE73D1CB8DF5A94E2C36EF3A6ACE
            38D895FE5D7A3BFA3FA667D91EBD797F5D48795172C5B479D93FEF7BF2B5033A
            36BEFBB74CDB8601A667EB2A291D5152D5EF813716DCFA35D3B32037088022F2
            E12EFF7B44C8ABFCA3FA7C6A85F84E3BE7F58822FBDEFFEC31006C1314005BB9
            89B274B2B4D7ECB252F7EB2FCFBBF93D93F3AAC1137B653A9CEF49A52ED47F8C
            C351F2664CDE7B973FFE25BDE1762FD39E343D4C57E99F815469E52EE35F9F3F
            E561D3B3207708802270F4C4DB7AB5FB897BF583E6B85C2EB7526544D3E6C744
            85E2C5BF41B227FEA9AB3A496C9025A647F92F510260AB2DA772ADE8FDA74455
            D9575F9B75E3F242CF9ADA63C2118EEF64F75E0D2AF47577C726FD287B551F4F
            3495C573B77FB2BCF7AAF2AAAA635E9933E55FA667416E11003DDCC1A7DF71B8
            2365F641332FAF3EE3A880E17E55B297F869D941DD5F501E742600B6CA9EE025
            59D1E745A7A4ECAC658F4E595C8839BD9AC9672BA16ED717EDABA808B29BFE07
            2B7DF1A35EBE88CB9B67A5FE5F6975DFA6650B763959887ADFF43CC83D02A007
            3B74DC5D67EB879EEC817DBA75F2F920BBA80EF1874DF3F515F0F8B03DD9B3FF
            7DB1F244F1B6D3E9375A14445702E0DFA4CCBE85F08D6479E5C5F93AE18B1A7C
            51A9D7B6FE1742AAD34DDD46B9F44C5289AFEFEC89F596BF7A76CBDE9E5EFDAF
            5EF6D89429A66741FE10003D5076977FCA737FA69F7514E441F37FDB5F145F4E
            B177707B7E9FDC43FCA0FC10D363EC50B70260ABAD6F21ACECF59D25F36EBC2F
            57B3A97E63ABBCD2925FEB2BA835791BE5DAEB0925CED011F0B66B7A92ED4B94
            566DA82AEF3FE4E5C7AEE7053E3D1C01D0C31C3EE1AE237C5FCCD40F9F05FB3D
            E9AE7EBB686C59C86B013E267BE4BFB155278A779C9CBCE6322F721200DBF8CF
            5B087B5FD79DDDC66AD7C9FDFDA498A3843AC2F46D940F2BDD0F2260A9552F63
            94A2A472E71776AEEE77DCE259F5457398E8624600F4184A1E7AFA5D170BA97E
            AAFFB316FCF7A49353CBC425EDFF347D2358E5CED2FDC503A5DD7EB7655EE53A
            00B6724BCADB9365BDA7F6A9E87359673726D957FAFB1D72A152E270D3B74F3E
            AD7684F8525F4FAC70CDBF3870CB51FD2AFBDFB474C1CD579A9E05854300F400
            478CBDB7B797C8DC973DE389A9195C7DE50D9B9F10FBF81B4DDF1C5678CBA912
            E3AA3E67CB71FF77285F01B0959328C99494F699254A4ACE8D726E7875E0D812
            6F7DE96CFDC834DCF46D53086FEA8DFF977504AC35F863E226CBDBCA4A771AD3
            130E058DCE210062EEB071B71FA9C496B746ED6D7A9683BDF7C47D2D4F6E8981
            6296DDEF7D5EE57162B1D9B3FE4592EF00D84A3A493F59DEFBE94AB7EC9C971E
            BF71BBE79256A2DEF16A5E6FD45F5D54E7927F31A9C469BBF8A24D16FE7EA3FF
            9B2C2F71AA8E5AB268CABBA66F07141E01105B6677F9EFC859A9D7C579EDAF9A
            1EC3A875A2E4A6DA5EB59BF4C54B45F7CF409757850A807F938E4896F57E2359
            567DEEEB8FFEF4B16DFFC91B30E91A25C58F4CDF2626CC2C57E2EA3E5D3EB160
            E7E9FF0E65157D7FBB6CD16D45155BF828022086B6ECF277333FD717BF6C7A96
            8FCBEEC9BCB5E52971ACB7D6F428A6FCD1ADAC1E261B1BBDECBB313A32EE57F5
            BD2C7B929ADD4D0FB63D050F80ADB6BE73A0B4FA9B4B1E9FF28BD48089C73852
            664F2C13DBA3E575D715BD3DF1EB8AFCEF057012255E6965DFB397CEBFE97ED3
            EB0CB308809839F4F43B3FA3FFAB6577F9EF657A961DD9D9EF10535BFE2C3EA1
            8AEC85C44ABCEDFAEA48396FDE3BDBFEF5E0BADB4AAB7BB9A72B475CA3BF663F
            D3636ECB58006C63D764D5A6C75776A86A4FC5F6D4B8B9D0AA1F8DC7F4CDE4F5
            9D01C9B2EAB589AA3EC72E6DBA81A3778100888FADBBFCC50D2206CF92F6F037
            8B9FB73EB925068AC4465F389F2B993367C7EF9DAEAF770E7EADDF6847896BF5
            9F8E363D70960D0170C37A479CD666F78B250B257BA0A0B17DBD3CBC8A26FB16
            BF5D9E5A2EFA9E2016D5F37E5D6C4100C4C011E3EFEDEBA9CC83FAE268D3B374
            C6A7BCF5E29ED6BF16C3F101DA95706A9373E6443E37FA21E3EF3C5E2AF94D1D
            76D9FFA6C6EE87A603E0C89414BF5EE7F240B48D2BFBF8A2B13C7747D6DCF216
            BFAAFEDF5EFAF8CDD79B5E37D885FB9DE50E9970F751D2DF72FADE3D4DCFD215
            C764D68A1BDA9E11E5AA802F702AAC76A1E46989A6A6595DF9E6C34EBFED105F
            26AE90428D1706CE6E67320012FA69EE6CBDF13F20CDC3D0B6DE778438B15F66
            CBE7EE4A242B5ADD5EFD6ADF98FB933F9B5E2FD8877B9EB5E2B5CB3FC8FFA4D7
            CCB9A5ED6F47E91FB6BEA667C92DB55E09F7F39D79E6BF23078FBD7D2FE93A97
            EADBE8EBFA8F053B7180C90018DF2AC58F37587A3C5CC3EEADF4C5F5BDBAB717
            A0A462E7572A64FFA35E5E54BFD9F4FAC04E0480853EDCE53F555FAC333D4B37
            B5E98F4B9E7FE882FBD4E8D10778CA9FAB379A7B981E2A4756F9C2A90BFC9D7F
            171C36F6B67ECA752FD0B7D345FAEEB973BE57C25400640F7EF7F8BB09B1578F
            FFED50D7645F10787C7F4FAC733AFF6A00291D5152D9F7FE3716DE7696E9F580
            DD0800CB1C76DA1D9F558EFCA5BE38C0F42CDDF48AAF9CD35E9C79DE4B5BFF42
            D5D5F5F3849AA67FEA627E7217F584EB2427C8D9B357E6EB1A0E1C7B6755D211
            6709A92ED777D3BC4593A90038B54D8A5BD6F3EC3FC8AD55BEB8A9BA737B01DC
            4459AAB47297F1AFCF9FF2B0E9F9613F02C01A3D6797BF12725AA2C53D77F1AC
            735AFFFBDF84F447D55EACBFE64661E077DEDD5D353DFFED89D56BAF948B1717
            E4B4EE479C7D6FD2DF9019AF3E3896C081B95EBEA90098BFD615FB6478F809B2
            51DF3CC7F6F7C4E6887B0192E5BD575595551EF5D2A337AD303D3BE2817BA005
            B2BB7D7DD79DAAFF638C343D4B376DD65BF8739F9F79C1F4B02F4C8FAE3D417F
            EDBD52C8034C0F1D857E085EA21BEDBC6453D3024313C8C34EBB7B9872C425FA
            F2C9B95AAA8900383C25C56FD7F1EC3F8A28EF08D0F721515ADDB769D9825D4E
            EECE1918517C0800C30E1D77FB10219CEC06D3CA23C54526D53FF546F2B41766
            5CF872D46F51471C91F477ED7BBE12F207FA8FD5A6576107DAF47AFD34D1DAFE
            63B96851BBE961B2B2A77CF67C7189146A82C89E87A91B4C04C00F373862722B
            EFFB8FE2C95225C6EFBCE377D0384ED22FE9D5FFEA658F4D99627A56C40F0160
            8C92878CBBFB6AFD209E3DF679AC9F0E05EDF28FF4FD634EDAC3F312DFD51727
            EB0F5BCE6B90DDC53FDD75FDEFCB598F2E373DCCF61C3EF6CEC19E2B2ED217CF
            D677E4B2AE2CA3D00190FDDDD633AB1362279EA74692DDF97F42FFED9F323851
            5AB5A1AABCFF90971FBB3EA72F4445F120000C3878F2DDFDDD949AAAA48AF78B
            E1A4D8A47F80CE796EC6053372B1383562C4C04CC2B9B2D06F85FB9894FE98E9
            3ADE0FE4ECC75E373443A71C34FE965D132A799EDE5A5CA2FF9BF4E9CCF7163A
            0086B54B71FFFBB1EEDD82FB512F4FFCAC72DB00C81ED56FE71776AEEE77DCE2
            59F54576BC6DE412015060879D76D749CA510DFAE2AEA667E9A6E784E39EFEFC
            2FCFCDF946527DE10B7DBC8E8E538454D93D02C344017E4EF5C3EB3F1D29A73A
            6EEA41F987C757E7FBFAF2E1D0336FEE233A4ACF534A5DAC6FB04F44F99E4207
            C07737BAE2AC161E763A6361A912677EF86B80EC51FD4AAAFAFDF88DC76FB9C6
            F45C883FEE89053276ECAFDCD7DDB5DFD117BF2D8A7C977FA7AE6BD4A87D7DE1
            7F516FA04FD47F3C5EE46ECF40F618057F914A2D7412EA6139EBD11E730EE303
            C7FEAAA4C4593BCE97E25BFA0EBE7FD0D7163A00E6BDEB8AFD39F25FA7647BE9
            E04F64844A96B79595EE3466C9C29B1E373D137A06EE890590DDE5EFA4FDECB3
            FEE1A667E9A68D7A8379CE73332F7CC8C495ABB1634B32AD1B8F76943C520741
            F6AC7AFB6E39BB9E0C7D01E52AFD75D90DFC1229D4125F387F4F08F1946C6AEA
            D9672AFAF0E44352896BF41DFD98ED7D49210320FB7BFF675727042FFFEBBC49
            BB95BFFD6C65AF43962C9AF2AEE959D07310007976F0F8BB874AE54F8FBA4BD6
            567AFE67A5274E7FB6F182A5A667D91E75CA29D5FA497DB5C824AB84AF9FFB96
            789B443AB1596FE4379A9ECD063B3AF95021036068BB140FF0FBFF2E91525DE9
            AE98CE2BFD915304409E6CB3CB3FFB11F3273DEA679B37F8172F6DBAB8673F63
            2E02878FBFEB604F892BB79E7CA8900170768B14D76E2400BA46DE97689E76B6
            E929BAE38885AFF57D63CDBAB5A6E7C07F10007970C8D8BB0738AE3F43097182
            E959BA4589F57A1DCE7A61E6051C56B487C99E7CC8759DCBD7BEF1E485AA4067
            6ACC9EF8277B022074C91389E686CF991EA23B0800FB706FCCB1C3C6DD31CC17
            B221EEBBFCB5C5AEF24E5F3CF3E265A60741FEEC3FEC5BFBA6FD4D3FEB687DFF
            B3CAF7F2FA78D0B8CE1547A578C8E9122556275636C4FA318500B00FF7C61C19
            32A43EB1FE13FDB2AFF0EF11BBFCD35EFF8B5E6E3C2D657A1214C6A01157F657
            99F4944CDBFAD3BD4C475ECE45F1A735AED823BF8DD1A3B9653B95C9A5B7C7F6
            D77004807D62796FCC9E50468C1EDD47A4D3552299AC4A2B55997DE15752CA16
            91486F167EE926F1C823EBE50707D2CABB8327DE56E3786EF66038C79BBE6DBA
            698350F21BCFCF3CBFD1F420304487ECA0C486EBD26D1B2EF352AD95B95CF4F3
            1C01B05B5CE5F4952BA7AE333D47571100F6B13E00B61C1426DDFE5925E49152
            A9FDA450FBEACBD9B78095877C6BBB5EB9D7B22771514A2D91AE5CECA6D51FE5
            BC79EFE572BE1E74609FBF7B8E3CFD1FBF3CFF0DD383C00E7B0FBBE27CBF63D3
            77D31D1B73F2B3FDFA3BAE28B1FF21C75AAE2BF796FF9A66E561A9A32000EC63
            E5BD315557778C94E254BDB11FAAFF7898C8DD81737CA9C4F3FA49C802E1F8BF
            4D3CF2E85FBBBA97A007EDF2DF728ADB8CD7EF2A76F9637BF61E7EC578BFA3F5
            8799B6F57BAB2EEE54CB9EF779D93B713BFBB35D3CE11C52DA3CF545D3737415
            01601F6B02207B4218DF4B9CA137CE93E407077929C4DA2F95424E731C6F5A67
            4EF872D0B83B0726849CA1A7FE1F6337586E6CC81E77FFB9872EF8B5E94160BF
            FD865D7E62CAEBB839DDFAFE214A756E5F7E85EE8657561100DDA19FBD1C55B2
            62FA33A6E7E82A02C03EC603A0A3B6F640D7CD1EA0446C795FB2A131F4A3999C
            E30BF9BD923973FE1EF485078FBF738CA3D483FAEB7736346BAE3CE37BFEE92F
            365E14DB5D8A306370DDB73EA5DA37DDD5D1F2FE67958AF6AABEEC17BDF10E47
            01EC0ED717FBCBB71B5E333D47571100F63116001DA3471CE4AAEC79E0E5E74D
            CEF131D9FD9BB37D477DA764F6BC17B6FD0776F9031FF5C9DA6B764B746CBE33
            D5B1FE143F930AFD35DDCBAB5D51E5DB72578F1F576606C8150FBD6D7A8EAE22
            00EC53F07BA31A33A622E3A5AFD657FC2D61CFB9DF3FCED729F07357C8ABB287
            923D62ECBD7B786E26FB2AFFE34C0FD64DEBF47FF2AF3CFFD0F98F981E043DC7
            8143EAABDADDF553D26D1BBEE2A5DB4A77F4754FAF4E885D79174097B91D1DD5
            726DE366D373741501609F82064066F4C853F486F54E7DB1C6F48A47A2C4DBBF
            2F1938ED07E5877C23FEBBFCD5D3FA21E4F4E71F3AEF4DD393A087FAF02D8499
            B68D9764522DD51FFF67CE04D82D1D6E734379A1DEDA9C0F04807D0A726F5443
            862432E5A53F94525E5DA8EBCCA539C91A717DF9C1A23D9E67F1DDB2CB3FD12B
            71E5E29F9D93363D0C8AC37FDE42B869D7ADDBAC7BDE77455D7BECEEFE56D0B7
            DA4B3A003E6D7A8EEE2000EC93F77BA31A33622FCF7366EA8B9F31BDB2DDB1C4
            ED25BE557EA4F89793D363A3E4DBBB52C9339E9B797E93E941509CF639E98A2F
            A653AD37A4DBD7EF7DD546292EDC1CE797CF18F59B4473C3974D0FD11D04807D
            F21A00A951A38E74849FFD7D737FD32B9A0B1B65525C5E7E94783E1183DF0648
            F184CA38135E683C6FA5E951804123BE79DC84B5EFCDB86E6DDB1EA667892325
            C5F5C9150DD79A9EA33B0800FBE42D00D2A36B4FD4CF3E7FA72FF632BD92B994
            128EF876C5E162416237D3A3EC08BBFC61A5D48009873AD279CEF41CB124E5F8
            C48A690F991EA33B0800FBE4250032A3477E5128917DD5BCADAFF2EF164FDF6C
            F5E58789A6E400D3A37CDC5A478A339E9D71C15CD383001FA744BDE3D52C5DA3
            2FEE627A9698516E22B1BB7CF3C155A607E90E02C03E390F800F9FF9677FE75C
            DAED8559CCD737DDD5E5478A45496BCED0F94729FC09CF3D74516CDF278C9E2F
            5333E961FDE954D373C48914EA65B779FA41A6E7E82E02C03E390D80D4C9B587
            38BE58A417DBC7F48A15428770C40515C79A7E4D80D20F103F1DECF5BFB6B1F1
            34CFF46D0204F16A265EA484BCCDF41CF1226F4F344FBBD8F414DD4500D82767
            01A0468C18E8259CEC61747BC40BFEA2DA204BC4572A4F10CD4E8589AB5FAB7C
            7FF20BBFBA689EE9DB0188427D72F25E9EA7968918BE1DD81425E5C8E48A69B1
            BF8F1300F6C9C99D30FB3E7FAFB26CA150E278D32B64C22B6E6F7156E5F15B5E
            205830522C74DDC4C4C50DE7BC637AFD81CEC80C98F427FDF35B948F159DA6C4
            6A7765738D148B32A647E92E02C03E390980F4A8BA9F48A1AE36BD3226CD28D9
            5B4C293BB0105795DDCDFFC37DBC7E3F60973FE2C8AB997CB612EA5ED373C481
            52724A72E5B42B4DCF910B04807DBA1D00E95123864BE1CCCBC5B2E24CE9D5BF
            BCE233E24F895DF379356B8454939E9F71E163A6D717E82AB5E7997DBC4C26BB
            E7AACCF42CB6F39538B46465C30BDD5F927904807DBAB5D1567575A519A95ED0
            0BD9CFF48AD86095AC1063AB86883699FB43064BA1163889E42476F9A327C80C
            987497FEA13ECFF41C965B90686E18667A885C2100ECD3AD00488F1A59AF1770
            9DE995B0C9FDA5FB88BB4AF7CFE522B7ECF27F7EFFB5DF17F5F59C4B0D3D82DA
            FD8C3D3CC77F5DF4D06385E48252FED0E4CA5F2E343D47AE1000F6E97200E867
            FF833CA95E12ECC6FB88B470C4F8AACF89379DAA5C2C6EB5F4E5A4E77E75FE7C
            D3EB05E45A66E0A40785125F313D87A59ED2CFFE8F353D442E1100F6E9720064
            EA463EA8BF9B3BEF76CC4B0E10D7961FDEAD6528211E2FF1C4A4671A2F88F5D1
            BF801D513593067B42649F44F4E88386758552EAA4E4CAE98F9B9E23970800FB
            742900D49893F6F0BC04BBEF76207B94C0B1552776F5CC81D9B7FBFC885DFE28
            06E901937F28A58AF5496E724EC9998995D3C6991E23D70800FB74290032A36B
            EFD23FA4BC8027C0EF4B068A1F941DDAD96F6B56528C7F61C6057F363D3F5008
            AA666CB9274AB37B01F6363D8B2536B9C23940364FED7167F12400ECD3E90050
            B5B53B7BAECCFE70F2BBFF0019E988D15527897532E2DE4D29E667447AD24B33
            2E5D6D7A76A0903203268DD63FFFB34DCF6103A9D465EECAE9B7989E231F0800
            FB743A00BCBABAF3945477991E3C0E6E2E3B504C2F097D62C32E7F14BD4CCDA4
            DBF5A70B4DCF61D85CB779F068297AE6E30001609F4E0740A66EE493FABB7AD4
            AB53F3E535B7B79858F9D980AF506F4929C63D37E3C2BF9A9E1530491D7176D2
            5BDDFA84BE788CE9590C59E9669287C9550FF4D80D2401609F4E0580AAAD1DEC
            B9724967BFAF988DAB1C2296BAD5FFF5F752895929BFF4CC971BBFFE9EE91901
            1BA8815F19E4292F7B42B1A2389BE836D24A8A61C9150D7F323D483E1100F6E9
            D486DC1B5D77A552EA06D343C7C93DA5FB8B9F97EEB3ED5FB1CB1FD881D48089
            C7385266DFFE66E4F49A062821E5D7122BA63D687A907C2300ECD3A900C88C1E
            F988FE711D657AE8387926D1579C57B1F53726EA2D7D938F7FFEA10B9E343D17
            60ABCCEE93C708473DAC2F264CCF926F528AABDC150D379A9EA3100800FB440E
            802DA7FCAD285BA72FF6323D749CA4A42B4EAC1E293A84FC43DA2BFB2ABBFC81
            70998113BF2694BC4F5F2CE039B60B4B09F5D364F3F46F9A9EA3500800FB440E
            80F4C9238F95BEE0996B17FCB8FCA0FBBEFD9B1BCED9F29B7F0091646A269EAA
            EF33BF143DEF2DC74A3F107C3FD9DC506F7A90422200EC13390078FB5FD7E91B
            F97277CEDC9B4DCF01C44D7AC08413A5747E277ACE9E474F6FFFCF4B344FBFCF
            F420854600D827FA1E805175B748A12E313D704CDD9B9833F75CD3430071941A
            30E91029C5AFF483D5BEA667E9A635CA1193926F353C667A10130800FB440E80
            CCA8914DFAD348D303C792128B124D734F343D061057AAEFD7AABDB2F43DFAD2
            04D3B374D113AE7026F4C443FC464500D8A73301B04C70BCEEAE7A273167EEEE
            A68700E22E5333E9EBFA53F6ADC871395640877E90FD3FA7B9E38752347AA687
            318900B04FF400183D72937E269B9393DC17A18C0E80A4E921809E40ED357E57
            2FEDE808909384D50725930B5DC7BF50BE35FD9FA627B10101609F48771E555F
            EF784F3F95163DF82D39F9E6565657C8C6C636D373003D45BA66F2E7A4503FD1
            178F363DCBB69410AF4925BF935839ADD1F42C362100EC132D004E39A5DACBA4
            369A1E36CEDC8CBFAB7CF4D135A6E7007A9AF41E671C2F7DF54DFD4875B2C939
            F483E94B4A891BDC951DD38B7D77FFF61000F6891800C377F7326ED1BE782517
            5C4FED23E7CD5B6A7A0EA0A7FAF030C25FD5174F13857B8D409B7ECAFF7B21D5
            54B779FA5CB9650700B68700B04FC40018B6AB9749AE323D6C9CB9AEBFB79CF5
            E872D373003D9DDAF3CC322FED8DD117BFA437CCD977DFF4CFF1556CD48F9C7F
            D4D7F43B3799FA8D7CA37183E9758E0302C03ED10260CC980ACF4BB7981E36CE
            5C37D94FCE9AF5AEE9398062A29F8ECB54CDC48312420ED5973F233E3896C07E
            22FA8185DAF483E41225C56BD297CF7B522C4836B7FF9D5DFC9D4700D8275A00
            E8AFF3468DCCBE08D0353D705CB995D5A5B2B131657A0E00FA31ED9393764B2B
            7F77E9895ED271AA8552554239AE70D426E5399B5522F37ED2295927DE7CF05F
            ECD6CF0D02C03E9D390EC07AFDA9B7E98163AA2331676E4F3B9E3900444600D8
            A7138702AEFDA714F200D303C7D4721D001C440940D12200ECD3893D00B5BFD5
            5FFE05D303C7D45C1D0075A6870000530800FB44DF035057FB632965D19CBB3A
            979490B726E7345D6A7A0E00308500B04F67F6007C557FF9FDA6078E23A9E4F9
            6E53D3DDA6E70000530800FB440E808ED1230E7295F30FD303C7912F9CCF94CC
            99F377D37300802904807D2207C0876F057C5B5FFC84E9A1E345AD772B7BF595
            8DBC6F1840F12200ECD3A9336965EA46CED0DF31CEF4D0F1A27E979833EF54D3
            5300804904807D3A190075DF1052FDCCF4D07122A5BCD87DA4E976D373008049
            04807D3A1500AAAEAE9F2755F6A4409CDB3E1ADF55F293B2A9A9D9F420006012
            01609F4E0540566654DD2CD3A7DD8C0FF958624ED308D35300806904807DBA10
            00B5A7E96F9B697AF078506724E6CC9B667A0A00308D00B04FA703400D1952E6
            5594ADD017FB9A1EDE721BDCD6F61AB968D166D38300806904807D3A1D00595E
            5DED779494DF373DBCCD94103F4CCE99FB1DD37300800D0800FB742900D44927
            F5F64ADC37F5B7F731BD02966A7195DC4B3635F1C30E008200B0519702202B3D
            6AE4F5FA9BBF657A056CA494B831D934F72AD37300802D0800FB743900D4E8D1
            3B79CA7B555FEC6F7A252CF39E7EF6BF7F4F7AF67FCA2BCB1FD63F291CCCC81A
            6AF21FF6DFBBC1F41440671000F6E972006465468D3C537F7AC0F44A5845C9B3
            134D4DF7991E23970800DB1000881F02C03EDD0A802DE707A81BB9402F6588E9
            15B1C433EE51C71C23EBEB7DD383E41201601B0200F14300D8A75B0190A5EAEA
            3EE549F58CBE58617A650C6BF77C7174E9DCB92F9A1E24D70800DB1000881F02
            C03EDD0E80AC4C5DDDD78454FFCFF4CA9824853ACF9D33EF1ED373E40301601B
            0200F14300D827270190951955FB0BBDB8334CAF90218D8939734F333D44BE10
            00B62100103F04807D7216006AC4884A3F21FFAC843CD4F44A159294E265C797
            C7C9A6A68DA667C91702C0360400E28700B04FCE02202B7BB6C08C547FD60BDD
            D7F48A15C84AD7CD1C2767CD7FCBF420F94400D8860040FC1000F6C9690064E9
            0818E4E908D0173F617AE5F24A8975AEE39E201F79E415D3A3E41B01601B0200
            F14300D827E70190953AB9F610C777E6E907AA5D4DAF605EE88DBFAF445DC9DC
            B9CF981EA5100800DB1000881F02C03E7909802C3566C45E19CF9D2785DAC7F4
            4AE6D8BF5CD71F29673DFAAAE9410A8500B00D0180F82100EC93B700C852A70C
            DBD54F27E728290E37BDA2B9A06FAC7F384EA24ECE9EBDD2F42C854400D88600
            40FC1000F6C96B0064A92143CA3215653FD15774B1E995EDA6696E6BFBF972D1
            A2CDA607293402C0360400E28700B04FDE0360ABCCE89193F4A7BB851255A657
            BA93DAA550FFEBCE9977ABE9414C21006C4300207E0800FB142C00B2546DED60
            CF75EED297869B5EF18816BAAE7F7E31FDBE7F7B0800DB1000881F02C03E050D
            80AD32757563F435DFA11FC8F6307D03ECC02AA1E437DDA6A66972CB398F8A1B
            01601B0200F14300D8C7480064A92143AAFCF2D28B959497EA3FF6337D437C30
            94582785BAD511CEAD3DF9C87E9D4500D8860040FC1000F63116005B7D700861
            E76CFD34FB0AFDC70186C658A56F889B9CD6F6BB8BF1457E610800DB1000881F
            02C03EC603602B555FEF649E7AEA3829C564E188090578B160875EFDC7845453
            DD556B7F27172F4E9BBE0D6C4500D8860040FC1000F6B12600B6A5EAEA7A79D2
            1F298473A2126A68CECE2D20C552BDF485FAC202B723D324E7CFDF607A5DE380
            00B00D0180F82100EC6365007C9C3AF9E4019E9F3E522AB19F92321B03FBEB8F
            DDF447F5871F651F7E69BBFEC8EEC2CFFEFE7E955EBDD7A414AF29A996B832B3
            B8A79FB4275F0800DB1000881F02C03EB10880306AC89084D8B449B21B3F3F08
            00DB1000881F02C03E3D2200905F04806D0800C40F01601F0200A10800DB1000
            881F02C03E0400421100B62100103F04807D08008422006C4300207E0800FB10
            00084500D8860040FC1000F62100108A00B00D0180F82100EC4300201401601B
            0200F14300D88700402802C0360400E28700B00F01805004806D0800C40F0160
            1F0200A10800DB1000881F02C03E0400421100B62100103F04807D0800842200
            6C4300207E0800FB1000084500D8860040FC1000F62100108A00B00D0180F821
            00EC4300201401601B0200F14300D88700402802C0360400E28700B00F018050
            04806D0800C40F01601F0200A10800DB1000881F02C03E0400421100B6210010
            3F04807D08008422006C4300207E0800FB1000084500D8860040FC1000F62100
            108A00B00D0180F82100EC4300201401601B0200F14300D88700402802C03604
            00E28700B00F01805004806D0800C40F01601F0200A10800DB1000881F02C03E
            0400421100B62100103F04807D08008422006C4300207E0800FB1000084500D8
            860040FC1000F62100108A00B00D0180F82100EC4300201401601B0200F14300
            D88700402802C0360400E28700B00F01805004806D0800C40F01601F0200A108
            00DB1000881F02C03E0400421100B62100103F04807D08008422006C4300207E
            0800FB1000084500D8860040FC1000F62100108A00B00D0180F82100EC430020
            1401601B0200F14300D88700402802C0360400E28700B00F01805004806D0800
            C40F01601F0200A10800DBD81700072F78E1E8B427BE647A0E7CC0759D575F1A
            FAE9FB4DCFB12D02C03E0400421100B6B12F000E78ECD9BB57BDD77EAEE939F0
            81DE95256FBF79F291034CCFB12D02C03E0400421100B62100108C0040140400
            421100B62100108C0040140400421100B62100108C0040140400421100B62100
            108C0040140400421100B62100108C0040140400421100B62100108C00401404
            00421100B62100108C0040140400421100B62100108C0040140400421100B621
            00108C0040140400421100B62100108C0040140400421100B62100108C004014
            0400421100B62100108C0040140400421100B62100108C0040140400421100B6
            2100108C0040140400421100B62100108C0040140400421100B62100108C0040
            140400421100B62100108C0040140400421100B62100108C0040140400421100
            B62100108C0040140400421100B62100108C0040140400421100B62100108C00
            40140400421100B62100108C0040140400421100B62100108C00401404004211
            00B62100108C0040140400421100B62100108C0040140400421100B62100108C
            0040140400421100B62100108C0040140400421100B62100108C004014040042
            1100B62100108C0040140400421100B62100108C0040140400421100B6210010
            8C0040140400421100B62100108C0040140400421100B62100108C0040140400
            421100B62100108C0040140400421100B62100108C0040140400421100B62100
            108C0040140400421100B62100108C0040140400421100B62100108C00401404
            00421100B62100108C0040140400421100B62100108C0040140400421100B621
            00108C0040140400421100B62100108C0040140400421100B62100108C004014
            0400421100B62100108C0040140400421100B62100108C0040140400421100B6
            2100108C0040140400421100B62100108C0040140400421100B62100108C0040
            140400421100B62100108C0040140400421100B62100108C0040140400421100
            B62100108C0040140400421100B62100108C0040140400421100B62100108C00
            4014F29457972BD343E03FD4E6D2CA5947EEDE6A7A8E6D1100B62100108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C004014040050C4FEF4C23BA647006008010014
            310200285E040050C40800A07811004011230080E2450000458C00008A170100
            14310200285E040050C40800A07811004011230080E2450000458C00008A1701
            0014310200285E040050C40800A07811004011230080E2450000458C00008A17
            010014310200285E040050C40800A07811004011230080E2450000458C00008A
            17010014310200285E040050C40800A07811004011230080E2450000458C0000
            8A17010014310200285E040050C40800A07811004011230080E2450000458C00
            008A17010014310200285E040050C40800A07811004011230080E2450000458C
            00008A17010014310200285EFF1F2E894806EF4269F40000000049454E44AE42
            6082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 30.236240000000000000
          Width = 570.709030000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            'PT. KELOMPOK 6 SEMAKIN DIDEPAN.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 94.488250000000000000
          Width = 317.480520000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'LAPORAN DATA PELANGGAN')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 166.299320000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 5.000000000000000000
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Height = 34.015770000000000000
        ParentFont = False
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 97.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ID PELANGGAN')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 116.456710000000000000
          Width = 121.782188110000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NAMA PELANGGAN')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 264.695608110000000000
          Width = 125.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'JENIS KELAMIN')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 351.916078110000000000
          Width = 197.151218740000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '                ALAMAT')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 556.626356850000000000
          Width = 150.145289370000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NOMOR TELPHONE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        DataSet = FRDB_DATAPELANGGAN
        DataSetName = 'FR_PELANGGAN'
        RowCount = 0
        object Memo8: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 120.236240000000000000
          Height = 18.897650000000000000
          DataSet = FRDB_DATAPELANGGAN
          DataSetName = 'FR_PELANGGAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '          [FR_PELANGGAN."id_pelanggan"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 116.456710000000000000
          Width = 163.357018110000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = FRDB_DATAPELANGGAN
          DataSetName = 'FR_PELANGGAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_PELANGGAN."nama"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 272.254668110000000000
          Width = 140.133890000000000000
          Height = 18.897650000000000000
          DataField = 'jenis_kelamin'
          DataSet = FRDB_DATAPELANGGAN
          DataSetName = 'FR_PELANGGAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_PELANGGAN."jenis_kelamin"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 408.609028110000000000
          Width = 336.993828740000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = FRDB_DATAPELANGGAN
          DataSetName = 'FR_PELANGGAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_PELANGGAN."alamat"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 586.863060630000000000
          Width = 131.247639370000000000
          Height = 15.118120000000000000
          DataField = 'no_tlpn'
          DataSet = FRDB_DATAPELANGGAN
          DataSetName = 'FR_PELANGGAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PELANGGAN."no_tlpn"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 109.606370000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 1.000000000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 60.472480000000000000
          Width = 192.756030000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CUKUP SEKIAN')
          ParentFont = False
        end
      end
    end
  end
  object FR_SUPPLIER: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45284.749225497700000000
    ReportOptions.LastChange = 45285.548210381950000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 632
    Top = 96
    Datasets = <
      item
        DataSet = FRDB_DATASUPPLIER
        DataSetName = 'FR_SUPPLIER'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 181.417440000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Align = baLeft
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 105.826840000000000000
          Height = 113.385900000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000020000
            0002000806000000F478D4FA0000000473424954080808087C08648800000009
            7048597300000B1300000B1301009A9C180000001974455874536F6674776172
            65007777772E696E6B73636170652E6F72679BEE3C1A000044344944415478DA
            EDDD097C14E5FDF8F1E799D9CD1D4005AC12AC0A5ED57AD7EBA72D821002626B
            5B94D3DADA7ADF577FD5B6A697BFB68AF759FB570BA148D3DA0324A008D4B6D6
            6AF1AA5645102B413944B972EDEECCF37F16A5450B339364779F67B29F775F69
            164866BFB366773E3BD99D9102008022A1F698B0B7A79C83A512FB2921F7154A
            EDABA4D8590A51A5FFB95A7FF4D61FEDFA6373F6434AB15E29B54209F19A14CE
            12E5FBAF269CD4B3B2B9B1CDF4BA7497343D000000F9A2F61ABFAB97726B8523
            860A2587EABF199883C576E88FA7F40674A1EFABF989B7F7F9AB14F5BEE975ED
            2C020000D0A3A83DCF2CF352DE70E1AAC942892FE8BF4AE6F92A572AA17EA394
            BCBF6465C30BA6D73F2A020000D023E80DFF273299CCE57AC376B6F86057BE81
            21C49FF5FFFFD85DD9304766FF6431020000106B6AF771033D2771B5BE7896FE
            28373D4F96DEB83EA7B7FE3F729B1B1EB63504080000402CA923CE4EFAAB5BCF
            D75BD71F8A0F5EC4671F25FEEC49757E69F3F47F981EE5E308000040ECA4074C
            385148F72E29D4FEA6678920A394BC35916AAF976B1B379B1E662B020000101B
            4A0C49646A6ABEAD375EDFD17F744CCFD3B9D9C512A5C469B6BC5090000000C4
            821A30B1C6137286DE721D6F7A966E68D71BDEFF759B1B6E353D08010000B05E
            AA66F2D18E50B3F5C5BEA667C90D799FDBDC7E9E148D9EB1094CDF0400000449
            0F98384C4AF95BF1C191FA7A0E2966B9AAE37453471524000000D6CA0C9C3C4E
            28F50B7DB1C4F42C79F2845BD2718A7CA37143A1AF980000005829B3FBE431C2
            510FEB8B09D3B3E4D91FDD4462A47CF3C1F6425E29010000B04E6AC0C4631C29
            E7EB8B95A667290825FEE0AE6CFE92148B3285BA4A02000060958E3DBE72A0EB
            7BD943EAF6313D4B412971576265C30585BA3A020000600DB5EBE4CA4C523DAD
            374E9F323D8B991B407C4547C0D4425C15010000B04666E0A407B31B41D37318
            D4E27AF233F29D69AFE4FB8A08000080153203267E4548F9A0E9394CD31BE67F
            3889C451F97E5120010000304E0D3863174FFAAFE98BBB989EC5067AE35CEF36
            377C2FCFD701008059ECFAFF2F1DAE720E962BA72EC9D71510000000A3D27B9C
            71BCF4FD2704DBA48F51F312CDD347E66BE9DCD80000A3323593FEA23F1D677A
            0E1B29258725574E5B908F651300000063D2BB9F719274FCC74CCF61B10589E6
            8661F9583001000030463FFB5FA83F0D313D87CD94E39C907C6BEA9F73BD5C02
            00006044AA66C2518E70FE667A0EFBC9D989E6696372BE54D3AB0500284E9981
            93EE114A9C637A8E18F05C570C94FF6A7827970B2500000005A70E1C5BE26D28
            7D5BF0BEFF48A41457B82B1A6ECAE9324DAF1400A0F864064C1E2BA4FA95E939
            E2426FAC9F779B1B0ECBF132010028ACCCC049338512A7999E234E5CE5EC97CB
            03031100008082527ADBE3D54C5AA52FF6373D4B9C4825CF73574EBB2767CB33
            BD420080E2D25173C6C1AEF05F303D47EC48F1ABC48A86D373B73800000AC81B
            30F15225E5CDA6E788A1756EF3E0FE52D4FBB9581801000028A84CCDE4E942A8
            09A6E78823D7F107C9B77EF9462E96450000000ACA1B3869B152E270D373C493
            1A95689EDE948B251100008082F9F005801BF4C56AD3B3C49154EA3277E5F45B
            72B22CD32B0300281EAAE68C019EF09B4DCF115B52DD935831FDBC9C2CCAF4BA
            00008A07C7FFEFAEDC9D1780000000144C7AC0C46152CAF9A6E788B14589E686
            1373B1200200005030998193BE2094F8ADE939E24A4AF1ACBBA2E1889C2CCBF4
            CA00008A4766C0E4C942AAA9A6E7882B25C4EBC9E6867D73B12C020000503099
            8193CF144A3D607A8E185B9E686ED83B170B220000000593A999F425FDE9D7A6
            E7882BBDD17ED16D6E382447CB0200A030D203278E904ACE333D476C29F1E7C4
            CA861372B1280200005030E9DD271D271DF117D373C45853A2B961542E164400
            00000A46D54CD8C7134ECECE695F74A4989A58D1F095DC2C0A008002516248C2
            ABA969D1174B4CCF124752896BDD950DD7E76459A65706C8155557572A7CBF52
            5464A478DF6B918B16B59B9E09C07F4BD74C7E450AB5BFE93962EACB89E686DF
            E46241040062237B1291D4E81107BACA39525FDE4FFFF0EEAB3FEFAF3FEFA6FF
            B94A7F243FF62D19FDB14909B54A2AF9AAFEBC440A6789EFFA8B93471EFB0F59
            9F9B736A03E89C4CCDC4DFE9BBF3E74DCF11479E949F2E5D31EDA55C2C8B0080
            D5546DED6EBE2B3EAF84CC1EFA7288FEE89FA345BFAB7FFA17E93BC04247267E
            2F67CF5E697A5D81E250EF341CF8D6CBE336A4D803D0796D6ED94E3BC9A5B777
            E462610400ACA3860C29F32ACBC60825CFC82680F8EF67F6B996DD13F05729E5
            54A7A5ED9772D1A2CDA66F03A027FA64ED35BB396DEB9E3E7CC3C69A99EB5CD3
            E3C48F54F3132BA60FCFD9E24CAF0FB0951A33A66FC64B5F2285BA50FF68F631
            34C64625C45D898C7FB37CF4D135A66F13A0A7D8A7F6CAD11D9BD6FDC64BB795
            668BFE1FAB5C51AED804758654F21A77E5B4FFCBD9F24CAF10A0468CE89F4938
            DFD43F8CE7E83F569A9EE743AD4AC8FB1242FE58CE99B3CAF430409C0D1A7AD9
            DD1D2DABCF55FE7F5E7633FD3D471CDFE1981E2D567C218F29699E96B3532913
            003046D5D73BDEDFFE364967ED14FDC7BEA6E7D9811629E50F9C8AAA1B6563A3
            677A18204E061F7D512FAFDC7F22D5B2EEBF0E5D7B668B14DFDBC8AF013AE16D
            B7B9630F2972F7384400C088545DDD618E54F7EA8B9F313D4B14FA8EF29CE7A8
            734B66CF7BDAF42C401CEC39E2CAA3FDD6F7E77B1D2D55DBFBF79D7C219E599D
            C8FB0B7C7A0A25C48DC9E686AB72B94C020005E78DAE3B5B2975BB88DF814032
            FA4EF8A3C451C77C9FB710023B3678E8E5D7B5B7ACB94EF999C06DCCCFDF73C5
            F00E36435178C239A4B479EA8BB95C26B73C0A46D5D5F5F2A4BA4F5F3CCDF42C
            DD34DF4DA427C93F3CBEDAF420805DEA9D4143D7CD6EDFBCB62EFB94354C5DBB
            14F7BCCFAF01C2E80DF5F36E73C36179582E907F6AE4C83D338E98973D788FE9
            5972E40DD7F146CAD98FBD6E7A10C006070CBF6A9FD6F6F54F66DA37457E3D8F
            AB23E1F1771362AF8CE9E96DA726279AA737E47AA90400F2AEA3B6F640D79573
            F5C51AD3B3E49412EB7C214F2E696A7ACAF428804983875F39A963F3DA07FC4C
            47A2B3DF3BBE558A1F6F602F408037DCE6E6FDA45894F34C22009057E9D1238E
            934A3E62F07DFDF9B64939E294E4ECB98B4C0F0298B0F7D04BA6756C5E3349A8
            08FBFCB7235B0C7F5C931035BCC76647BE91686EF8793E164C00206F3A468F38
            C855CE13FAE24EA667C9B3561D0127E908F8ABE941804239B0F6B29DDBDADBFF
            DAD1FA7EB77FADC75E80EDD349B524D1BBE3D3F2E5C6543E964F00202FD48811
            03BD84F3177D71A0E9590AE45DD717C7CBB9735F333D08906F834FFA666DAA6D
            CDEFBC545B592E96973D1CD06FD6B9E2F0149BA48F52A312CDD39BF2B5746E6D
            E49C1A3D7AA78CF2FF2685DAC7F42C05B6DC759347C959B3DE353D08902F7B0F
            BBF4FAD4E6B5FFAB7C2FA7DB8FFDD3523CA22320D1B5DF24F43C4ACE4CAC9C36
            2E9F57410020A7B2A7ECF5EA46FE46FF649D6A7A1643B740937BD4B127739C00
            F4347B0E39B34C8AAA85A99675C78828EFF1EB82EF6E74C5592D6C96B4F75DE1
            7C5A364FCDEB594AB9A591535E5DDDA54AAA9B4DCF619254EA9B6ED3BC9F9A9E
            03C895C1275D7E58A67DC3A274474BAF7C5E4F89DE24FDF65D471C942EEA4D53
            F679D49713CDD31ECEF71515F5AD8CDC4A8D1E7184A39C2745FC8EF0976B195F
            C913787B207A827D4EBAF4A2B6CDEB6E515EBA2067EEF9A427C5236B5D515DA4
            BF0A5052DE925C31EDB2425C1701809CD872629FA79FCABE0AFE28D3B3D8400A
            F992B37ACDE172F1E2B4E95980AEA977060D79EFD7EDAD6B4FEDEA5BFCBA6A74
            9B23EE5CEF14E306EA6F6EEF8ECFE6EB55FF1F5784B72FF2C1ABABBD5097EBED
            A6E7B089BE735DEECE995BD4BF0E413CED7BF2B503D21BDF7D2AD5B6C1D8C1BB
            CE6C75C4F73614D5E98297B949EF7FE4F219053BC43801806E53A70CDBD5CB24
            5EEDC107FBE9AA4D6EC2DB5FFEE1B1B74D0F02443578F8E563532DEF4DF7D2ED
            C64FD477CD46479CD3521411B0C615FEF1B2F997053DB43801806E4B8FAABB45
            0A7589E9392C755762CEDC0B4C0F01443168E86577776C5E73AE52761C962FBB
            81CA1E20685C6B8FDE54ADF595185EB2B2E185425F718FBE55917FEAD461BB78
            A9E49B4289AAEE2FAD47EA7013DEDEEC0580CD061F7D512FAFDC7F22D5B2EE10
            D3B37C5C762375C926475CB6B947EE09F897EB8B5AF976839103881100E896F4
            A891D7EB1FA26F999EC3664ACA29C9479AAE343D07B03D7B8EB8F268BFF5FDF9
            5E478BD5117F668B14D76D74454FC90029D4CB8E1223E5CAE9CDE66600BA488D
            1851E9259CEC812A7A9B9EC5722D6E49598DFCDDEFD69B1E04D8D6E0A1975FD7
            DEB2E63AE56762B12D18DE21C594F5AEE81DF7C36C49D1E896AAAFCBA5D3379A
            1D03E8A2CCA8DAC9FA4768AAE939E2417D2331675E5ECEE805745EBD3368E8BA
            D9ED9BD7D6E5E9A07E79B3BB27C41D3A028E88E7790374C2886FBACD0DB79A1E
            242B96B720EC901955F7A8DEB00D373D473CA82774007CCEF414C0FEC3BEB56F
            5BEADDBF64DA37F5353D4B5725A5AB6EDF58F674DDE68EC3444C0E3CA637B6CF
            79BE7356C9DB539F333DCB3633019DA74E19BEBB9771DFD21739876734CA95EE
            60F9C8236F981E04C56BF0F02B27756C5EF3809F49254CCFD2556EB2BCA3B47A
            972FBD3EEFC64754CD847D3C913DFE88AC353D57800D7A437B9DD3DC7187148D
            76BCBDE2430400BAC41B557B8112F20ED373C48954EA4AB769DE14D373A038ED
            3DF492697AE33FA9D047F5CBA56479EFE56E59F531CB1EBD71CDB67F9F1938F1
            74E5CBEBA41407989E711B1D7A0BFBA0EB26EAE59B0FAE323DCCF61000E892CC
            A891BFD19FBE687A8E9879243167EEC9A687407139B0F6B29D5BDBDB9F4AB5BE
            1FDFD3734B479455F4FDEDB245B7EDF03147897AC7DB7DD968E1A8EFE83F7EC6
            E0B41DFAE317AE523F30F90AFF28080074DA87C7FDCF1EAE32B6BF43346493BB
            7AED2E9C1F00853278F8552352ADEFFEDE4BB595999EA5AB9C4489575ED5EFDC
            258F4D89F422DAECA9F43203260C91429E21A4FC92FEABEA42CCA9AF6FB1BEF6
            694E26F94BB9EA81B5466FB4C833039D941A35EA5047F8D6BC90254E94238E4B
            CE9EFB57D373A0E7DB7BD8A5D7A736AFFD5FE57BB17D9C4F9456BD9FACEE77FC
            D2A6FFFB6757BE5FED7E7685E7B47C416FEA46E93F0ED51FBBE570BCB4DE823E
            AD947C3CE1F833E55BD3BB34A349B1FDC180399951B55FD73F3AF7999E238EA4
            5217B94DF378ED04F266CF2167964951B530D5B2EE1811B7F7F8FD9B142595BB
            3CB55CF43D412CAACFE46AA96AB7C907F80935440975B050725FFD57FBE98F01
            11BEB54D6F2C9728295E53BE784D4AF557B723F527B9B671B3E95BAA3B080074
            5ABA6EE40D520A8E6CD7054D2503DFB9B6FCD0735E9C71FEEC6C0E989E073DCB
            A011571CE1B56E5C90EED8D4CBF42C5D251D579557F7FFEEEBF36FFE6121AE2F
            BB974088F6BEA984AC96BE5F257D592D1C3FA31C7F535288F74587BB59AC9EB6
            56C6B7A676880040A765468DFC83FE34C6F41C71F4B7443F7141857E6226E40B
            52A99B7AAF5EFBCB45397C8683E2B5CF49975ED4B6F9BD5B94978AEDD17213C9
            8A56A76AA7BAE58F4E79C2F42CC5800040A7A5478D7C557EB0EB0C9DB44A5688
            93AB876DFB57CBF5F38A5BDDD6C47D8B679DD36A7A3EC451BD3368C87BBF6E6F
            5D7B6A9CDFE25752B1F32B15B2FF512F2FAA8FF56EF5382100D06999512337E8
            4FB1DDC568525A38E2D85EA3B7F74FD9570DDF95F64A6F7BB9F1EBEF999E13F1
            B0EFC9D70EE8D8F8EEDF326D1BA2FC1EDB4A523AA2A4AADF036F2CB8F56BA667
            293604003A25FB161B6FD4C8ECDBD8380260171DA70320B5E3739A6DD6B7F1FD
            092F316571E3396F999E15F61A34E2AAD3D39BD64EF332ED49D3B374959B284D
            9756F61DF7FAFC290F9B9EA5181100E8940FCF00C82EBA6E185E5D2BDE97A187
            2F4F2B211F12D2FFC90B332E7CD9F4CCB0CBA0132FB9A7A3E5DD7394B2EAC8B2
            9D922CEFBDAABCAAEA9857E64CF997E9598A1501804E51A3467DC213FE3BA6E7
            88B32F540D13CD4E45D42FD71D201EF785B8EDC51917CC323D3BCC1A7CF445BD
            BC72FF8954CBBA434CCFD25552FFAFB4BA6FD3B205BB9C2C447DDC4FEC1B6B04
            003A45D5D6EEE6B9F26DD373C4D9A95543C50AA7B22BDFBA582A71DB60BFDFF4
            C6C6D3E2FBD40F5D32F8A4AB8F49B5BF3BDFEB68EDD20F8F0D1C27E997F4EA7F
            F5B2C7A6704E0C0B1000E894B34EF9FE61F7669E7CD6F41C7136A26A8478CF29
            EDCE22960A25EEE8535E71EFA207BFDA6E7A7D907F834FBABCBE7DD39AEF2A3F
            13DBC7EC4469D586AAF2FE435E7EECFAE74DCF820FC4F687098577D8B83B26EB
            4F77FD6DE3ECAAD8BED1D802C7558F12299993D75066CFC7708F284BDDF2FC83
            97AD37BD5EC8877A67D0D075B3DB37AFAD8BEF6168B247F5DBF9859DABFB1DB7
            78563D6F75B508018050C78EBDA9BCD52DFDB1FE61B938FBE73F6E6C12958263
            D77445463AE298EAD1DD5FD0B6A4D8A494784078CE4F5F683C6FA5E975446EEC
            3FEC5BFBB6A7D63D996EDFB88BE959BA4A4A579555F5BF69E9829B3972A88508
            00043A62FCEDFBFBBEF32B25C5A7B7FEDDC39B178A3D7CDE08D015AB9D3231BA
            6A789E96AE524A383313D2BB7EF18C8B5E35BDAEE8BA7D875F31B96DF3DAFBFD
            4C2A617A96AE7293E51DA5D5BB7CE9F579373E627A166C1F01801D3AECF43BCF
            D01BFEBBF4C58FBCE8E896D6A7C5F199D5A6C78BA567127DC57915C7E6FB6A7C
            7DD79EE328F1A367679EFF94E97546E7EC3DF492691D9BD74C8AF351FD92E5BD
            97BB65D5C72C7BF4C635A667C18E1100F82FD95DFE6D6EE9ADFAE237B6F7EF97
            B6FF534C4A2D333D662C3596EC297E52F6E9EE2F2832F9175FAA9F70F221FBED
            35EC9A5D45FABDA7536DEBF7303D4B9749479455F4FDEDB245B77DD1F4280847
            00E0230E3FFDCE037C297EA52F1EB4A3AFF962FA5FE29AB6174D8F1A4B37961D
            241E2AD9CBC455BFA837FF5338F9909D060FBF6A44AAF5DDDF7BA9B632D3B374
            959328F14A2BFB9EBD74FE4DF79B9E05D11000F8B743C7DFF175A1E46DFA6279
            D0D71DE06D10D35A385957577CA3F238F19C6BF4355DCB951237255A13F717D3
            C9879418EB8ADD13FB78AEBBBF0EA1FD94C89E0BDE1F20A4ACD27FAE52425467
            BF4E3F20B6E8CB2D42AACDFA9BDE91D259A27CB5C417E2B564F94EAFCAA5B777
            E47AB641232EBFA163C3EA2B94EFC5F6F1385956BD3651D5E7D8A54D37B06B30
            4662FB0387DCD9EF94FF575D5ED1768FFE719810E5EB1DFDC8387FD33CD14BA5
            4D8F1E2BEDC215437B8D0C3A0F4021AD954ADED1FEDEF219AF3C76C3EBA687C9
            87D4804987B8429DA81C3954FFC87E56FF55EF6E2EB24D7F3CA98361812F9C85
            89956D4F4BD1D8E503321D31A6BEE2BD4D6BFF926A5977A8E9DBAACBF416443F
            EB5FF086EA5B2BD8B3143B0440913B6CEC3D9F52AE97DDE57F6067BE6F4AEB33
            E2739955A6C78F95BF26FA8B8B2A8E363DC647BCBBFC2FFAD95B9F57924ED945
            4B16DEF4B8E979BA4B0D9858E34B39513F63FF9A7E70DB37CF57F78E12AA51F9
            F217256F3774EAE05883465C7184D7BA7141BA63536CCFAA299D2D6FF1FBF6D2
            C76FBEDEF42CE81A02A0887DF82AFFBBF5C5C807A6DF6A5C6AB9B8B2FD25D3AB
            102BB7971E207E513AD8F4181FB176D99F3EB8A01F099225BD569794575FB5E4
            B129D34CCFD559E981936BA55257EB8B270A038F6B528A67955253DCE6D4CCB0
            BD02FB8CB8F2E2B68D6B6E565ECA8A5D415D914856B43A553BD52D7F740ABF0B
            8C3102A0087DB0CBBFFD5E7D717C5797B19BDF267EBF79BE1D3BB363E2CB5527
            8A379D2AD3637CC4BF03601BC9D2EA8D6E59D56DCBE6DFFC1DD3F305D9726AEA
            9A895FD09FAED17F3CD2F43C1F5AAAE7F9B1DBBB7D9A7CB931F5D17FAA77060D
            79EFD71D2D6B4F55F13DAC9F28A9D8F9950AD9FFA89717D57330909823008ACC
            21E3EE3E4C0A7FA6BEB84F7797756FCB93E2086F9DE9558A8597DC9DC49995C7
            9B1EE3BF6C2F00B64A9454B626CAAA1BCA76EE73D1CB8DF5A94E2C36EF3A6ACE
            38D895FE5D7A3BFA3FA667D91EBD797F5D48795172C5B479D93FEF7BF2B5033A
            36BEFBB74CDB8601A667EB2A291D5152D5EF813716DCFA35D3B32037088022F2
            E12EFF7B44C8ABFCA3FA7C6A85F84E3BE7F58822FBDEFFEC31006C1314005BB9
            89B274B2B4D7ECB252F7EB2FCFBBF93D93F3AAC1137B653A9CEF49A52ED47F8C
            C351F2664CDE7B973FFE25BDE1762FD39E343D4C57E99F815469E52EE35F9F3F
            E561D3B3207708802270F4C4DB7AB5FB897BF583E6B85C2EB7526544D3E6C744
            85E2C5BF41B227FEA9AB3A496C9025A647F92F510260AB2DA772ADE8FDA74455
            D9575F9B75E3F242CF9ADA63C2118EEF64F75E0D2AF47577C726FD287B551F4F
            3495C573B77FB2BCF7AAF2AAAA635E9933E55FA667416E11003DDCC1A7DF71B8
            2365F641332FAF3EE3A880E17E55B297F869D941DD5F501E742600B6CA9EE025
            59D1E745A7A4ECAC658F4E595C8839BD9AC9672BA16ED717EDABA808B29BFE07
            2B7DF1A35EBE88CB9B67A5FE5F6975DFA6650B763959887ADFF43CC83D02A007
            3B74DC5D67EB879EEC817DBA75F2F920BBA80EF1874DF3F515F0F8B03DD9B3FF
            7DB1F244F1B6D3E9375A14445702E0DFA4CCBE85F08D6479E5C5F93AE18B1A7C
            51A9D7B6FE1742AAD34DDD46B9F44C5289AFEFEC89F596BF7A76CBDE9E5EFDAF
            5EF6D89429A66741FE10003D5076977FCA737FA69F7514E441F37FDB5F145F4E
            B177707B7E9FDC43FCA0FC10D363EC50B70260ABAD6F21ACECF59D25F36EBC2F
            57B3A97E63ABBCD2925FEB2BA835791BE5DAEB0925CED011F0B66B7A92ED4B94
            566DA82AEF3FE4E5C7AEE7053E3D1C01D0C31C3EE1AE237C5FCCD40F9F05FB3D
            E9AE7EBB686C59C86B013E267BE4BFB155278A779C9CBCE6322F721200DBF8CF
            5B087B5FD79DDDC66AD7C9FDFDA498A3843AC2F46D940F2BDD0F2260A9552F63
            94A2A472E71776AEEE77DCE259F5457398E8624600F4184A1E7AFA5D170BA97E
            AAFFB316FCF7A49353CBC425EDFF347D2358E5CED2FDC503A5DD7EB7655EE53A
            00B6724BCADB9365BDA7F6A9E87359673726D957FAFB1D72A152E270D3B74F3E
            AD7684F8525F4FAC70CDBF3870CB51FD2AFBDFB474C1CD579A9E05854300F400
            478CBDB7B797C8DC973DE389A9195C7DE50D9B9F10FBF81B4DDF1C5678CBA912
            E3AA3E67CB71FF77285F01B0959328C99494F699254A4ACE8D726E7875E0D812
            6F7DE96CFDC834DCF46D53086FEA8DFF977504AC35F863E226CBDBCA4A771AD3
            130E058DCE210062EEB071B71FA9C496B746ED6D7A9683BDF7C47D2D4F6E8981
            6296DDEF7D5EE57162B1D9B3FE4592EF00D84A3A493F59DEFBE94AB7EC9C971E
            BF71BBE79256A2DEF16A5E6FD45F5D54E7927F31A9C469BBF8A24D16FE7EA3FF
            9B2C2F71AA8E5AB268CABBA66F07141E01105B6677F9EFC859A9D7C579EDAF9A
            1EC3A875A2E4A6DA5EB59BF4C54B45F7CF409757850A807F938E4896F57E2359
            567DEEEB8FFEF4B16DFFC91B30E91A25C58F4CDF2626CC2C57E2EA3E5D3EB160
            E7E9FF0E65157D7FBB6CD16D45155BF828022086B6ECF277333FD717BF6C7A96
            8FCBEEC9BCB5E52971ACB7D6F428A6FCD1ADAC1E261B1BBDECBB313A32EE57F5
            BD2C7B929ADD4D0FB63D050F80ADB6BE73A0B4FA9B4B1E9FF28BD48089C73852
            664F2C13DBA3E575D715BD3DF1EB8AFCEF057012255E6965DFB397CEBFE97ED3
            EB0CB308809839F4F43B3FA3FFAB6577F9EF657A961DD9D9EF10535BFE2C3EA1
            8AEC85C44ABCEDFAEA48396FDE3BDBFEF5E0BADB4AAB7BB9A72B475CA3BF663F
            D3636ECB58006C63D764D5A6C75776A86A4FC5F6D4B8B9D0AA1F8DC7F4CDE4F5
            9D01C9B2EAB589AA3EC72E6DBA81A3778100888FADBBFCC50D2206CF92F6F037
            8B9FB73EB925068AC4465F389F2B993367C7EF9DAEAF770E7EADDF6847896BF5
            9F8E363D70960D0170C37A479CD666F78B250B257BA0A0B17DBD3CBC8A26FB16
            BF5D9E5A2EFA9E2016D5F37E5D6C4100C4C011E3EFEDEBA9CC83FAE268D3B374
            C6A7BCF5E29ED6BF16C3F101DA95706A9373E6443E37FA21E3EF3C5E2AF94D1D
            76D9FFA6C6EE87A603E0C89414BF5EE7F240B48D2BFBF8A2B13C7747D6DCF216
            BFAAFEDF5EFAF8CDD79B5E37D885FB9DE50E9970F751D2DF72FADE3D4DCFD215
            C764D68A1BDA9E11E5AA802F702AAC76A1E46989A6A6595DF9E6C34EBFED105F
            26AE90428D1706CE6E67320012FA69EE6CBDF13F20CDC3D0B6DE778438B15F66
            CBE7EE4A242B5ADD5EFD6ADF98FB933F9B5E2FD8877B9EB5E2B5CB3FC8FFA4D7
            CCB9A5ED6F47E91FB6BEA667C92DB55E09F7F39D79E6BF23078FBD7D2FE93A97
            EADBE8EBFA8F053B7180C90018DF2AC58F37587A3C5CC3EEADF4C5F5BDBAB717
            A0A462E7572A64FFA35E5E54BFD9F4FAC04E0480853EDCE53F555FAC333D4B37
            B5E98F4B9E7FE882FBD4E8D10778CA9FAB379A7B981E2A4756F9C2A90BFC9D7F
            171C36F6B67ECA752FD0B7D345FAEEB973BE57C25400640F7EF7F8BB09B1578F
            FFED50D7645F10787C7F4FAC733AFF6A00291D5152D9F7FE3716DE7696E9F580
            DD0800CB1C76DA1D9F558EFCA5BE38C0F42CDDF48AAF9CD35E9C79DE4B5BFF42
            D5D5F5F3849AA67FEA627E7217F584EB2427C8D9B357E6EB1A0E1C7B6755D211
            6709A92ED777D3BC4593A90038B54D8A5BD6F3EC3FC8AD55BEB8A9BA737B01DC
            4459AAB47297F1AFCF9FF2B0E9F9613F02C01A3D6797BF12725AA2C53D77F1AC
            735AFFFBDF84F447D55EACBFE64661E077DEDD5D353DFFED89D56BAF948B1717
            E4B4EE479C7D6FD2DF9019AF3E3896C081B95EBEA90098BFD615FB6478F809B2
            51DF3CC7F6F7C4E6887B0192E5BD575595551EF5D2A337AD303D3BE2817BA005
            B2BB7D7DD79DAAFF638C343D4B376DD65BF8739F9F79C1F4B02F4C8FAE3D417F
            EDBD52C8034C0F1D857E085EA21BEDBC6453D3024313C8C34EBB7B9872C425FA
            F2C9B95AAA8900383C25C56FD7F1EC3F8A28EF08D0F721515ADDB769D9825D4E
            EECE1918517C0800C30E1D77FB10219CEC06D3CA23C54526D53FF546F2B41766
            5CF872D46F51471C91F477ED7BBE12F207FA8FD5A6576107DAF47AFD34D1DAFE
            63B96851BBE961B2B2A77CF67C7189146A82C89E87A91B4C04C00F373862722B
            EFFB8FE2C95225C6EFBCE377D0384ED22FE9D5FFEA658F4D99627A56C40F0160
            8C92878CBBFB6AFD209E3DF679AC9F0E05EDF28FF4FD634EDAC3F312DFD51727
            EB0F5BCE6B90DDC53FDD75FDEFCB598F2E373DCCF61C3EF6CEC19E2B2ED217CF
            D677E4B2AE2CA3D00190FDDDD633AB1362279EA74692DDF97F42FFED9F323851
            5AB5A1AABCFF90971FBB3EA72F4445F120000C3878F2DDFDDD949AAAA48AF78B
            E1A4D8A47F80CE796EC6053372B1383562C4C04CC2B9B2D06F85FB9894FE98E9
            3ADE0FE4ECC75E373443A71C34FE965D132A799EDE5A5CA2FF9BF4E9CCF7163A
            0086B54B71FFFBB1EEDD82FB512F4FFCAC72DB00C81ED56FE71776AEEE77DCE2
            59F54576BC6DE412015060879D76D749CA510DFAE2AEA667E9A6E784E39EFEFC
            2FCFCDF946527DE10B7DBC8E8E538454D93D02C344017E4EF5C3EB3F1D29A73A
            6EEA41F987C757E7FBFAF2E1D0336FEE233A4ACF534A5DAC6FB04F44F99E4207
            C07737BAE2AC161E763A6361A912677EF86B80EC51FD4AAAFAFDF88DC76FB9C6
            F45C883FEE89053276ECAFDCD7DDB5DFD117BF2D8A7C977FA7AE6BD4A87D7DE1
            7F516FA04FD47F3C5EE46ECF40F618057F914A2D7412EA6139EBD11E730EE303
            C7FEAAA4C4593BCE97E25BFA0EBE7FD0D7163A00E6BDEB8AFD39F25FA7647BE9
            E04F64844A96B79595EE3466C9C29B1E373D137A06EE890590DDE5EFA4FDECB3
            FEE1A667E9A68D7A8379CE73332F7CC8C495ABB1634B32AD1B8F76943C520741
            F6AC7AFB6E39BB9E0C7D01E52AFD75D90DFC1229D4125F387F4F08F1946C6AEA
            D9672AFAF0E44352896BF41DFD98ED7D49210320FB7BFF675727042FFFEBBC49
            BB95BFFD6C65AF43962C9AF2AEE959D07310007976F0F8BB874AE54F8FBA4BD6
            567AFE67A5274E7FB6F182A5A667D91E75CA29D5FA497DB5C824AB84AF9FFB96
            789B443AB1596FE4379A9ECD063B3AF95021036068BB140FF0FBFF2E91525DE9
            AE98CE2BFD915304409E6CB3CB3FFB11F3273DEA679B37F8172F6DBAB8673F63
            2E02878FBFEB604F892BB79E7CA8900170768B14D76E2400BA46DE97689E76B6
            E929BAE38885AFF57D63CDBAB5A6E7C07F10007970C8D8BB0738AE3F43097182
            E959BA4589F57A1DCE7A61E6051C56B487C99E7CC8759DCBD7BEF1E485AA4067
            6ACC9EF8277B022074C91389E686CF991EA23B0800FB706FCCB1C3C6DD31CC17
            B221EEBBFCB5C5AEF24E5F3CF3E265A60741FEEC3FEC5BFBA6FD4D3FEB687DFF
            B3CAF7F2FA78D0B8CE1547A578C8E9122556275636C4FA318500B00FF7C61C19
            32A43EB1FE13FDB2AFF0EF11BBFCD35EFF8B5E6E3C2D657A1214C6A01157F657
            99F4944CDBFAD3BD4C475ECE45F1A735AED823BF8DD1A3B9653B95C9A5B7C7F6
            D77004807D62796FCC9E50468C1EDD47A4D3552299AC4A2B55997DE15752CA16
            91486F167EE926F1C823EBE50707D2CABB8327DE56E3786EF66038C79BBE6DBA
            698350F21BCFCF3CBFD1F420304487ECA0C486EBD26D1B2EF352AD95B95CF4F3
            1C01B05B5CE5F4952BA7AE333D47571100F6B13E00B61C1426DDFE5925E49152
            A9FDA450FBEACBD9B78095877C6BBB5EB9D7B22771514A2D91AE5CECA6D51FE5
            BC79EFE572BE1E74609FBF7B8E3CFD1FBF3CFF0DD383C00E7B0FBBE27CBF63D3
            77D31D1B73F2B3FDFA3BAE28B1FF21C75AAE2BF796FF9A66E561A9A32000EC63
            E5BD315557778C94E254BDB11FAAFF7898C8DD81737CA9C4F3FA49C802E1F8BF
            4D3CF2E85FBBBA97A007EDF2DF728ADB8CD7EF2A76F9637BF61E7EC578BFA3F5
            8799B6F57BAB2EEE54CB9EF779D93B713BFBB35D3CE11C52DA3CF545D3737415
            01601F6B02207B4218DF4B9CA137CE93E407077929C4DA2F95424E731C6F5A67
            4EF872D0B83B0726849CA1A7FE1F6337586E6CC81E77FFB9872EF8B5E94160BF
            FD865D7E62CAEBB839DDFAFE214A756E5F7E85EE8657561100DDA19FBD1C55B2
            62FA33A6E7E82A02C03EC603A0A3B6F640D7CD1EA0446C795FB2A131F4A3999C
            E30BF9BD923973FE1EF485078FBF738CA3D483FAEB7736346BAE3CE37BFEE92F
            365E14DB5D8A306370DDB73EA5DA37DDD5D1F2FE67958AF6AABEEC17BDF10E47
            01EC0ED717FBCBB71B5E333D47571100F63116001DA3471CE4AAEC79E0E5E74D
            CEF131D9FD9BB37D477DA764F6BC17B6FD0776F9031FF5C9DA6B764B746CBE33
            D5B1FE143F930AFD35DDCBAB5D51E5DB72578F1F576606C8150FBD6D7A8EAE22
            00EC53F07BA31A33A622E3A5AFD657FC2D61CFB9DF3FCED729F07357C8ABB287
            923D62ECBD7B786E26FB2AFFE34C0FD64DEBF47FF2AF3CFFD0F98F981E043DC7
            8143EAABDADDF553D26D1BBEE2A5DB4A77F4754FAF4E885D79174097B91D1DD5
            726DE366D373741501609F82064066F4C853F486F54E7DB1C6F48A47A2C4DBBF
            2F1938ED07E5877C23FEBBFCD5D3FA21E4F4E71F3AEF4DD393A087FAF02D8499
            B68D9764522DD51FFF67CE04D82D1D6E734379A1DEDA9C0F04807D0A726F5443
            862432E5A53F94525E5DA8EBCCA539C91A717DF9C1A23D9E67F1DDB2CB3FD12B
            71E5E29F9D93363D0C8AC37FDE42B869D7ADDBAC7BDE77455D7BECEEFE56D0B7
            DA4B3A003E6D7A8EEE2000EC93F77BA31A33622FCF7366EA8B9F31BDB2DDB1C4
            ED25BE557EA4F89793D363A3E4DBBB52C9339E9B797E93E941509CF639E98A2F
            A653AD37A4DBD7EF7DD546292EDC1CE797CF18F59B4473C3974D0FD11D04807D
            F21A00A951A38E74849FFD7D737FD32B9A0B1B65525C5E7E94783E1183DF0648
            F184CA38135E683C6FA5E951804123BE79DC84B5EFCDB86E6DDB1EA667892325
            C5F5C9150DD79A9EA33B0800FBE42D00D2A36B4FD4CF3E7FA72FF632BD92B994
            128EF876C5E162416237D3A3EC08BBFC61A5D48009873AD279CEF41CB124E5F8
            C48A690F991EA33B0800FBE4250032A3477E5128917DD5BCADAFF2EF164FDF6C
            F5E58789A6E400D3A37CDC5A478A339E9D71C15CD383001FA744BDE3D52C5DA3
            2FEE627A9698516E22B1BB7CF3C155A607E90E02C03E390F800F9FF9677FE75C
            DAED8559CCD737DDD5E5478A45496BCED0F94729FC09CF3D74516CDF278C9E2F
            5333E961FDE954D373C48914EA65B779FA41A6E7E82E02C03E390D80D4C9B587
            38BE58A417DBC7F48A15428770C40515C79A7E4D80D20F103F1DECF5BFB6B1F1
            34CFF46D0204F16A265EA484BCCDF41CF1226F4F344FBBD8F414DD4500D82767
            01A0468C18E8259CEC61747BC40BFEA2DA204BC4572A4F10CD4E8589AB5FAB7C
            7FF20BBFBA689EE9DB0188427D72F25E9EA7968918BE1DD81425E5C8E48A69B1
            BF8F1300F6C9C99D30FB3E7FAFB26CA150E278D32B64C22B6E6F7156E5F15B5E
            205830522C74DDC4C4C50DE7BC637AFD81CEC80C98F427FDF35B948F159DA6C4
            6A7765738D148B32A647E92E02C03E390980F4A8BA9F48A1AE36BD3226CD28D9
            5B4C293BB0105795DDCDFFC37DBC7E3F60973FE2C8AB997CB612EA5ED373C481
            52724A72E5B42B4DCF910B04807DBA1D00E95123864BE1CCCBC5B2E24CE9D5BF
            BCE233E24F895DF379356B8454939E9F71E163A6D717E82AB5E7997DBC4C26BB
            E7AACCF42CB6F39538B46465C30BDD5F927904807DBAB5D1567575A519A95ED0
            0BD9CFF48AD86095AC1063AB86883699FB43064BA1163889E42476F9A327C80C
            987497FEA13ECFF41C965B90686E18667A885C2100ECD3AD00488F1A59AF1770
            9DE995B0C9FDA5FB88BB4AF7CFE522B7ECF27F7EFFB5DF17F5F59C4B0D3D82DA
            FD8C3D3CC77F5DF4D06385E48252FED0E4CA5F2E343D47AE1000F6E97200E867
            FF833CA95E12ECC6FB88B470C4F8AACF89379DAA5C2C6EB5F4E5A4E77E75FE7C
            D3EB05E45A66E0A40785125F313D87A59ED2CFFE8F353D442E1100F6E9720064
            EA463EA8BF9B3BEF76CC4B0E10D7961FDEAD6528211E2FF1C4A4671A2F88F5D1
            BF801D513593067B42649F44F4E88386758552EAA4E4CAE98F9B9E23970800FB
            742900D49893F6F0BC04BBEF76207B94C0B1552776F5CC81D9B7FBFC885DFE28
            06E901937F28A58AF5496E724EC9998995D3C6991E23D70800FB74290032A36B
            EFD23FA4BC8027C0EF4B068A1F941DDAD96F6B56528C7F61C6057F363D3F5008
            AA666CB9274AB37B01F6363D8B2536B9C23940364FED7167F12400ECD3E90050
            B5B53B7BAECCFE70F2BBFF0019E988D15527897532E2DE4D29E667447AD24B33
            2E5D6D7A76A0903203268DD63FFFB34DCF6103A9D465EECAE9B7989E231F0800
            FB743A00BCBABAF3945477991E3C0E6E2E3B504C2F097D62C32E7F14BD4CCDA4
            DBF5A70B4DCF61D85CB779F068297AE6E30001609F4E0740A66EE493FABB7AD4
            AB53F3E535B7B79858F9D980AF506F4929C63D37E3C2BF9A9E1530491D7176D2
            5BDDFA84BE788CE9590C59E9669287C9550FF4D80D2401609F4E0580AAAD1DEC
            B9724967BFAF988DAB1C2296BAD5FFF5F752895929BFF4CC971BBFFE9EE91901
            1BA8815F19E4292F7B42B1A2389BE836D24A8A61C9150D7F323D483E1100F6E9
            D486DC1B5D77A552EA06D343C7C93DA5FB8B9F97EEB3ED5FB1CB1FD881D48089
            C7385266DFFE66E4F49A062821E5D7122BA63D687A907C2300ECD3A900C88C1E
            F988FE711D657AE8387926D1579C57B1F53726EA2D7D938F7FFEA10B9E343D17
            60ABCCEE93C708473DAC2F264CCF926F528AABDC150D379A9EA3100800FB440E
            802DA7FCAD285BA72FF6323D749CA4A42B4EAC1E293A84FC43DA2BFB2ABBFC81
            70998113BF2694BC4F5F2CE039B60B4B09F5D364F3F46F9A9EA3500800FB440E
            80F4C9238F95BEE0996B17FCB8FCA0FBBEFD9B1BCED9F29B7F0091646A269EAA
            EF33BF143DEF2DC74A3F107C3FD9DC506F7A90422200EC13390078FB5FD7E91B
            F97277CEDC9B4DCF01C44D7AC08413A5747E277ACE9E474F6FFFCF4B344FBFCF
            F420854600D827FA1E805175B748A12E313D704CDD9B9833F75CD3430071941A
            30E91029C5AFF483D5BEA667E9A635CA1193926F353C667A10130800FB440E80
            CCA8914DFAD348D303C792128B124D734F343D061057AAEFD7AABDB2F43DFAD2
            04D3B374D113AE7026F4C443FC464500D8A73301B04C70BCEEAE7A273167EEEE
            A68700E22E5333E9EBFA53F6ADC871395640877E90FD3FA7B9E38752347AA687
            318900B04FF400183D72937E269B9393DC17A18C0E80A4E921809E40ED357E57
            2FEDE808909384D50725930B5DC7BF50BE35FD9FA627B10101609F48771E555F
            EF784F3F95163DF82D39F9E6565657C8C6C636D373003D45BA66F2E7A4503FD1
            178F363DCBB69410AF4925BF935839ADD1F42C362100EC132D004E39A5DACBA4
            369A1E36CEDC8CBFAB7CF4D135A6E7007A9AF41E671C2F7DF54DFD4875B2C939
            F483E94B4A891BDC951DD38B7D77FFF61000F6891800C377F7326ED1BE782517
            5C4FED23E7CD5B6A7A0EA0A7FAF030C25FD5174F13857B8D409B7ECAFF7B21D5
            54B779FA5CB9650700B68700B04FC40018B6AB9749AE323D6C9CB9AEBFB79CF5
            E872D373003D9DDAF3CC322FED8DD117BFA437CCD977DFF4CFF1556CD48F9C7F
            D4D7F43B3799FA8D7CA37183E9758E0302C03ED10260CC980ACF4BB7981E36CE
            5C37D94FCE9AF5AEE9398062A29F8ECB54CDC48312420ED5973F233E3896C07E
            22FA8185DAF483E41225C56BD297CF7B522C4836B7FF9D5DFC9D4700D8275A00
            E8AFF3468DCCBE08D0353D705CB995D5A5B2B131657A0E00FA31ED9393764B2B
            7F77E9895ED271AA8552554239AE70D426E5399B5522F37ED2295927DE7CF05F
            ECD6CF0D02C03E9D390EC07AFDA9B7E98163AA2331676E4F3B9E3900444600D8
            A7138702AEFDA714F200D303C7D4721D001C440940D12200ECD3893D00B5BFD5
            5FFE05D303C7D45C1D0075A6870000530800FB44DF035057FB632965D19CBB3A
            979490B726E7345D6A7A0E00308500B04F67F6007C557FF9FDA6078E23A9E4F9
            6E53D3DDA6E70000530800FB440E808ED1230E7295F30FD303C7912F9CCF94CC
            99F377D37300802904807D2207C0876F057C5B5FFC84E9A1E345AD772B7BF595
            8DBC6F1840F12200ECD3A9336965EA46CED0DF31CEF4D0F1A27E979833EF54D3
            5300804904807D3A190075DF1052FDCCF4D07122A5BCD87DA4E976D373008049
            04807D3A1500AAAEAE9F2755F6A4409CDB3E1ADF55F293B2A9A9D9F420006012
            01609F4E0540566654DD2CD3A7DD8C0FF958624ED308D35300806904807DBA10
            00B5A7E96F9B697AF078506724E6CC9B667A0A00308D00B04FA703400D1952E6
            5594ADD017FB9A1EDE721BDCD6F61AB968D166D38300806904807D3A1D00595E
            5DED779494DF373DBCCD94103F4CCE99FB1DD37300800D0800FB742900D44927
            F5F64ADC37F5B7F731BD02966A7195DC4B3635F1C30E008200B0519702202B3D
            6AE4F5FA9BBF657A056CA494B831D934F72AD37300802D0800FB743900D4E8D1
            3B79CA7B555FEC6F7A252CF39E7EF6BF7F4F7AF67FCA2BCB1FD63F291CCCC81A
            6AF21FF6DFBBC1F41440671000F6E972006465468D3C537F7AC0F44A5845C9B3
            134D4DF7991E23970800DB1000881F02C03EDD0A802DE707A81BB9402F6588E9
            15B1C433EE51C71C23EBEB7DD383E41201601B0200F14300D8A75B0190A5EAEA
            3EE549F58CBE58617A650C6BF77C7174E9DCB92F9A1E24D70800DB1000881F02
            C03EDD0E80AC4C5DDDD78454FFCFF4CA9824853ACF9D33EF1ED373E40301601B
            0200F14300D827270190951955FB0BBDB8334CAF90218D8939734F333D44BE10
            00B62100103F04807D7216006AC4884A3F21FFAC843CD4F44A159294E265C797
            C7C9A6A68DA667C91702C0360400E28700B04FCE02202B7BB6C08C547FD60BDD
            D7F48A15C84AD7CD1C2767CD7FCBF420F94400D8860040FC1000F6C9690064E9
            0818E4E908D0173F617AE5F24A8975AEE39E201F79E415D3A3E41B01601B0200
            F14300D827E70190953AB9F610C777E6E907AA5D4DAF605EE88DBFAF445DC9DC
            B9CF981EA5100800DB1000881F02C03E7909802C3566C45E19CF9D2785DAC7F4
            4AE6D8BF5CD71F29673DFAAAE9410A8500B00D0180F82100EC93B700C852A70C
            DBD54F27E728290E37BDA2B9A06FAC7F384EA24ECE9EBDD2F42C854400D88600
            40FC1000F6C96B0064A92143CA3215653FD15774B1E995EDA6696E6BFBF972D1
            A2CDA607293402C0360400E28700B04FDE0360ABCCE89193F4A7BB851255A657
            BA93DAA550FFEBCE9977ABE9414C21006C4300207E0800FB142C00B2546DED60
            CF75EED297869B5EF18816BAAE7F7E31FDBE7F7B0800DB1000881F02C03E050D
            80AD32757563F435DFA11FC8F6307D03ECC02AA1E437DDA6A66972CB398F8A1B
            01601B0200F14300D8C7480064A92143AAFCF2D28B959497EA3FF6337D437C30
            94582785BAD511CEAD3DF9C87E9D4500D8860040FC1000F63116005B7D700861
            E76CFD34FB0AFDC70186C658A56F889B9CD6F6BB8BF1457E610800DB1000881F
            02C03EC603602B555FEF649E7AEA3829C564E188090578B160875EFDC7845453
            DD556B7F27172F4E9BBE0D6C4500D8860040FC1000F6B12600B6A5EAEA7A79D2
            1F298473A2126A68CECE2D20C552BDF485FAC202B723D324E7CFDF607A5DE380
            00B00D0180F82100EC6365007C9C3AF9E4019E9F3E522AB19F92321B03FBEB8F
            DDF447F5871F651F7E69BBFEC8EEC2CFFEFE7E955EBDD7A414AF29A996B832B3
            B8A79FB4275F0800DB1000881F02C03EB10880306AC89084D8B449B21B3F3F08
            00DB1000881F02C03E3D2200905F04806D0800C40F01601F0200A10800DB1000
            881F02C03E0400421100B62100103F04807D08008422006C4300207E0800FB10
            00084500D8860040FC1000F62100108A00B00D0180F82100EC4300201401601B
            0200F14300D88700402802C0360400E28700B00F01805004806D0800C40F0160
            1F0200A10800DB1000881F02C03E0400421100B62100103F04807D0800842200
            6C4300207E0800FB1000084500D8860040FC1000F62100108A00B00D0180F821
            00EC4300201401601B0200F14300D88700402802C0360400E28700B00F018050
            04806D0800C40F01601F0200A10800DB1000881F02C03E0400421100B6210010
            3F04807D08008422006C4300207E0800FB1000084500D8860040FC1000F62100
            108A00B00D0180F82100EC4300201401601B0200F14300D88700402802C03604
            00E28700B00F01805004806D0800C40F01601F0200A10800DB1000881F02C03E
            0400421100B62100103F04807D08008422006C4300207E0800FB1000084500D8
            860040FC1000F62100108A00B00D0180F82100EC4300201401601B0200F14300
            D88700402802C0360400E28700B00F01805004806D0800C40F01601F0200A108
            00DB1000881F02C03E0400421100B62100103F04807D08008422006C4300207E
            0800FB1000084500D8860040FC1000F62100108A00B00D0180F82100EC430020
            1401601B0200F14300D88700402802C0360400E28700B00F01805004806D0800
            C40F01601F0200A10800DBD81700072F78E1E8B427BE647A0E7CC0759D575F1A
            FAE9FB4DCFB12D02C03E0400421100B6B12F000E78ECD9BB57BDD77EAEE939F0
            81DE95256FBF79F291034CCFB12D02C03E0400421100B62100108C0040140400
            421100B62100108C0040140400421100B62100108C0040140400421100B62100
            108C0040140400421100B62100108C0040140400421100B62100108C00401404
            00421100B62100108C0040140400421100B62100108C0040140400421100B621
            00108C0040140400421100B62100108C0040140400421100B62100108C004014
            0400421100B62100108C0040140400421100B62100108C0040140400421100B6
            2100108C0040140400421100B62100108C0040140400421100B62100108C0040
            140400421100B62100108C0040140400421100B62100108C0040140400421100
            B62100108C0040140400421100B62100108C0040140400421100B62100108C00
            40140400421100B62100108C0040140400421100B62100108C00401404004211
            00B62100108C0040140400421100B62100108C0040140400421100B62100108C
            0040140400421100B62100108C0040140400421100B62100108C004014040042
            1100B62100108C0040140400421100B62100108C0040140400421100B6210010
            8C0040140400421100B62100108C0040140400421100B62100108C0040140400
            421100B62100108C0040140400421100B62100108C0040140400421100B62100
            108C0040140400421100B62100108C0040140400421100B62100108C00401404
            00421100B62100108C0040140400421100B62100108C0040140400421100B621
            00108C0040140400421100B62100108C0040140400421100B62100108C004014
            0400421100B62100108C0040140400421100B62100108C0040140400421100B6
            2100108C0040140400421100B62100108C0040140400421100B62100108C0040
            140400421100B62100108C0040140400421100B62100108C0040140400421100
            B62100108C0040140400421100B62100108C0040140400421100B62100108C00
            4014F29457972BD343E03FD4E6D2CA5947EEDE6A7A8E6D1100B62100108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C004014040050C4FEF4C23BA647006008010014
            310200285E040050C40800A07811004011230080E2450000458C00008A170100
            14310200285E040050C40800A07811004011230080E2450000458C00008A1701
            0014310200285E040050C40800A07811004011230080E2450000458C00008A17
            010014310200285E040050C40800A07811004011230080E2450000458C00008A
            17010014310200285E040050C40800A07811004011230080E2450000458C0000
            8A17010014310200285E040050C40800A07811004011230080E2450000458C00
            008A17010014310200285E040050C40800A07811004011230080E2450000458C
            00008A17010014310200285EFF1F2E894806EF4269F40000000049454E44AE42
            6082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 30.236240000000000000
          Width = 570.709030000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            'PT. KELOMPOK 6 SEMAKIN DIDEPAN.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 105.826840000000000000
          Width = 283.464750000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8W = (
            'LAPORAN DATA SUPPLIER')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = -26.456710000000000000
          Top = 162.519790000000000000
          Width = 774.803650000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 4.000000000000000000
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Height = 34.015770000000000000
        ParentFont = False
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 718.110236220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 116.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ID SUPPLIER')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 101.338590000000000000
          Width = 212.490908110000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '       NAMA SUPPLIER')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 287.664068110000000000
          Width = 227.387458740000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '                ALAMAT')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 571.744476850000000000
          Width = 150.145289370000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NOMOR TELPHONE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        DataSet = FRDB_DATASUPPLIER
        DataSetName = 'FR_SUPPLIER'
        RowCount = 0
        object Memo8: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 108.897650000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = FRDB_DATASUPPLIER
          DataSetName = 'FR_SUPPLIER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_SUPPLIER."id"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 105.118120000000000000
          Width = 216.270438110000000000
          Height = 18.897650000000000000
          DataSet = FRDB_DATASUPPLIER
          DataSetName = 'FR_SUPPLIER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '     [FR_SUPPLIER."nama"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 317.609028110000000000
          Width = 261.078850000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = FRDB_DATASUPPLIER
          DataSetName = 'FR_SUPPLIER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_SUPPLIER."alamat"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 571.744940630000000000
          Width = 146.365759370000000000
          Height = 18.897650000000000000
          DataField = 'no_tlpn'
          DataSet = FRDB_DATASUPPLIER
          DataSetName = 'FR_SUPPLIER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_SUPPLIER."no_tlpn"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 400.630180000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 1.000000000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 60.472480000000000000
          Width = 192.756030000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CUKUP SEKIAN')
          ParentFont = False
        end
      end
      object Line1: TfrxLineView
        AllowVectorExport = True
        Left = 714.331170000000000000
        Top = 181.417440000000000000
        Height = 3.779530000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
    end
  end
  object FRDB_DATASUPPLIER: TfrxDBDataset
    UserName = 'FR_SUPPLIER'
    CloseDataSource = False
    DataSource = DataSourcesupplier
    BCDToCurrency = False
    Left = 744
    Top = 96
  end
  object FR_BARANG: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45284.749225497700000000
    ReportOptions.LastChange = 45285.541522129600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 632
    Top = 152
    Datasets = <
      item
        DataSet = FRDB_DATABARANG
        DataSetName = 'FR_BARANG'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 181.417440000000000000
        Top = 18.897650000000000000
        Width = 1171.654300000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1171.654300000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 26.456710000000000000
          Width = 170.078850000000000000
          Height = 113.385900000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000020000
            0002000806000000F478D4FA0000000473424954080808087C08648800000009
            7048597300000B1300000B1301009A9C180000001974455874536F6674776172
            65007777772E696E6B73636170652E6F72679BEE3C1A000044344944415478DA
            EDDD097C14E5FDF8F1E799D9CD1D4005AC12AC0A5ED57AD7EBA72D821002626B
            5B94D3DADA7ADF577FD5B6A697BFB68AF759FB570BA148D3DA0324A008D4B6D6
            6AF1AA5645102B413944B972EDEECCF37F16A5450B339364779F67B29F775F69
            164866BFB366773E3BD99D9102008022A1F698B0B7A79C83A512FB2921F7154A
            EDABA4D8590A51A5FFB95A7FF4D61FEDFA6373F6434AB15E29B54209F19A14CE
            12E5FBAF269CD4B3B2B9B1CDF4BA7497343D000000F9A2F61ABFAB97726B8523
            860A2587EABF199883C576E88FA7F40674A1EFABF989B7F7F9AB14F5BEE975ED
            2C020000D0A3A83DCF2CF352DE70E1AAC942892FE8BF4AE6F92A572AA17EA394
            BCBF6465C30BA6D73F2A020000D023E80DFF273299CCE57AC376B6F86057BE81
            21C49FF5FFFFD85DD9304766FF6431020000106B6AF771033D2771B5BE7896FE
            28373D4F96DEB83EA7B7FE3F729B1B1EB63504080000402CA923CE4EFAAB5BCF
            D75BD71F8A0F5EC4671F25FEEC49757E69F3F47F981EE5E308000040ECA4074C
            385148F72E29D4FEA6678920A394BC35916AAF976B1B379B1E662B020000101B
            4A0C49646A6ABEAD375EDFD17F744CCFD3B9D9C512A5C469B6BC5090000000C4
            821A30B1C6137286DE721D6F7A966E68D71BDEFF759B1B6E353D08010000B05E
            AA66F2D18E50B3F5C5BEA667C90D799FDBDC7E9E148D9EB1094CDF0400000449
            0F98384C4AF95BF1C191FA7A0E2966B9AAE37453471524000000D6CA0C9C3C4E
            28F50B7DB1C4F42C79F2845BD2718A7CA37143A1AF980000005829B3FBE431C2
            510FEB8B09D3B3E4D91FDD4462A47CF3C1F6425E29010000B04E6AC0C4631C29
            E7EB8B95A667290825FEE0AE6CFE92148B3285BA4A02000060958E3DBE72A0EB
            7BD943EAF6313D4B412971576265C30585BA3A020000600DB5EBE4CA4C523DAD
            374E9F323D8B991B407C4547C0D4425C15010000B04666E0A407B31B41D37318
            D4E27AF233F29D69AFE4FB8A08000080153203267E4548F9A0E9394CD31BE67F
            3889C451F97E5120010000304E0D3863174FFAAFE98BBB989EC5067AE35CEF36
            377C2FCFD701008059ECFAFF2F1DAE720E962BA72EC9D71510000000A3D27B9C
            71BCF4FD2704DBA48F51F312CDD347E66BE9DCD80000A3323593FEA23F1D677A
            0E1B29258725574E5B908F651300000063D2BB9F719274FCC74CCF61B10589E6
            8661F9583001000030463FFB5FA83F0D313D87CD94E39C907C6BEA9F73BD5C02
            00006044AA66C2518E70FE667A0EFBC9D989E6696372BE54D3AB0500284E9981
            93EE114A9C637A8E18F05C570C94FF6A7827970B2500000005A70E1C5BE26D28
            7D5BF0BEFF48A41457B82B1A6ECAE9324DAF1400A0F864064C1E2BA4FA95E939
            E2426FAC9F779B1B0ECBF132010028ACCCC049338512A7999E234E5CE5EC97CB
            03031100008082527ADBE3D54C5AA52FF6373D4B9C4825CF73574EBB2767CB33
            BD420080E2D25173C6C1AEF05F303D47EC48F1ABC48A86D373B73800000AC81B
            30F15225E5CDA6E788A1756EF3E0FE52D4FBB9581801000028A84CCDE4E942A8
            09A6E78823D7F107C9B77EF9462E96450000000ACA1B3869B152E270D373C493
            1A95689EDE948B251100008082F9F005801BF4C56AD3B3C49154EA3277E5F45B
            72B22CD32B0300281EAAE68C019EF09B4DCF115B52DD935831FDBC9C2CCAF4BA
            00008A07C7FFEFAEDC9D1780000000144C7AC0C46152CAF9A6E788B14589E686
            1373B1200200005030998193BE2094F8ADE939E24A4AF1ACBBA2E1889C2CCBF4
            CA00008A4766C0E4C942AAA9A6E7882B25C4EBC9E6867D73B12C020000503099
            8193CF144A3D607A8E185B9E686ED83B170B220000000593A999F425FDE9D7A6
            E7882BBDD17ED16D6E382447CB0200A030D203278E904ACE333D476C29F1E7C4
            CA861372B1280200005030E9DD271D271DF117D373C45853A2B961542E164400
            00000A46D54CD8C7134ECECE695F74A4989A58D1F095DC2C0A008002516248C2
            ABA969D1174B4CCF124752896BDD950DD7E76459A65706C8155557572A7CBF52
            5464A478DF6B918B16B59B9E09C07F4BD74C7E450AB5BFE93962EACB89E686DF
            E46241040062237B1291D4E81107BACA39525FDE4FFFF0EEAB3FEFAF3FEFA6FF
            B94A7F243FF62D19FDB14909B54A2AF9AAFEBC440A6789EFFA8B93471EFB0F59
            9F9B736A03E89C4CCDC4DFE9BBF3E74DCF11479E949F2E5D31EDA55C2C8B0080
            D5546DED6EBE2B3EAF84CC1EFA7288FEE89FA345BFAB7FFA17E93BC04247267E
            2F67CF5E697A5D81E250EF341CF8D6CBE336A4D803D0796D6ED94E3BC9A5B777
            E462610400ACA3860C29F32ACBC60825CFC82680F8EF67F6B996DD13F05729E5
            54A7A5ED9772D1A2CDA66F03A027FA64ED35BB396DEB9E3E7CC3C69A99EB5CD3
            E3C48F54F3132BA60FCFD9E24CAF0FB0951A33A66FC64B5F2285BA50FF68F631
            34C64625C45D898C7FB37CF4D135A66F13A0A7D8A7F6CAD11D9BD6FDC64BB795
            668BFE1FAB5C51AED804758654F21A77E5B4FFCBD9F24CAF10A0468CE89F4938
            DFD43F8CE7E83F569A9EE743AD4AC8FB1242FE58CE99B3CAF430409C0D1A7AD9
            DD1D2DABCF55FE7F5E7633FD3D471CDFE1981E2D567C218F29699E96B3532913
            003046D5D73BDEDFFE364967ED14FDC7BEA6E7D9811629E50F9C8AAA1B6563A3
            677A18204E061F7D512FAFDC7F22D5B2EEBF0E5D7B668B14DFDBC8AF013AE16D
            B7B9630F2972F7384400C088545DDD618E54F7EA8B9F313D4B14FA8EF29CE7A8
            734B66CF7BDAF42C401CEC39E2CAA3FDD6F7E77B1D2D55DBFBF79D7C219E599D
            C8FB0B7C7A0A25C48DC9E686AB72B94C020005E78DAE3B5B2975BB88DF814032
            FA4EF8A3C451C77C9FB710023B3678E8E5D7B5B7ACB94EF999C06DCCCFDF73C5
            F00E36435178C239A4B479EA8BB95C26B73C0A46D5D5F5F2A4BA4F5F3CCDF42C
            DD34DF4DA427C93F3CBEDAF420805DEA9D4143D7CD6EDFBCB62EFB94354C5DBB
            14F7BCCFAF01C2E80DF5F36E73C36179582E907F6AE4C83D338E98973D788FE9
            5972E40DD7F146CAD98FBD6E7A10C006070CBF6A9FD6F6F54F66DA37457E3D8F
            AB23E1F1771362AF8CE9E96DA726279AA737E47AA90400F2AEA3B6F640D79573
            F5C51AD3B3E49412EB7C214F2E696A7ACAF428804983875F39A963F3DA07FC4C
            47A2B3DF3BBE558A1F6F602F408037DCE6E6FDA45894F34C22009057E9D1238E
            934A3E62F07DFDF9B64939E294E4ECB98B4C0F0298B0F7D04BA6756C5E3349A8
            08FBFCB7235B0C7F5C931035BCC76647BE91686EF8793E164C00206F3A468F38
            C855CE13FAE24EA667C9B3561D0127E908F8ABE941804239B0F6B29DDBDADBFF
            DAD1FA7EB77FADC75E80EDD349B524D1BBE3D3F2E5C6543E964F00202FD48811
            03BD84F3177D71A0E9590AE45DD717C7CBB9735F333D08906F834FFA666DAA6D
            CDEFBC545B592E96973D1CD06FD6B9E2F0149BA48F52A312CDD39BF2B5746E6D
            E49C1A3D7AA78CF2FF2685DAC7F42C05B6DC759347C959B3DE353D08902F7B0F
            BBF4FAD4E6B5FFAB7C2FA7DB8FFDD3523CA22320D1B5DF24F43C4ACE4CAC9C36
            2E9F57410020A7B2A7ECF5EA46FE46FF649D6A7A1643B740937BD4B127739C00
            F4347B0E39B34C8AAA85A99675C78828EFF1EB82EF6E74C5592D6C96B4F75DE1
            7C5A364FCDEB594AB9A591535E5DDDA54AAA9B4DCF619254EA9B6ED3BC9F9A9E
            03C895C1275D7E58A67DC3A274474BAF7C5E4F89DE24FDF65D471C942EEA4D53
            F679D49713CDD31ECEF71515F5AD8CDC4A8D1E7184A39C2745FC8EF0976B195F
            C913787B207A827D4EBAF4A2B6CDEB6E515EBA2067EEF9A427C5236B5D515DA4
            BF0A5052DE925C31EDB2425C1701809CD872629FA79FCABE0AFE28D3B3D8400A
            F992B37ACDE172F1E2B4E95980AEA977060D79EFD7EDAD6B4FEDEA5BFCBA6A74
            9B23EE5CEF14E306EA6F6EEF8ECFE6EB55FF1F5784B72FF2C1ABABBD5097EBED
            A6E7B089BE735DEECE995BD4BF0E413CED7BF2B503D21BDF7D2AD5B6C1D8C1BB
            CE6C75C4F73614D5E98297B949EF7FE4F219053BC43801806E53A70CDBD5CB24
            5EEDC107FBE9AA4D6EC2DB5FFEE1B1B74D0F02443578F8E563532DEF4DF7D2ED
            C64FD477CD46479CD3521411B0C615FEF1B2F997053DB43801806E4B8FAABB45
            0A7589E9392C755762CEDC0B4C0F01443168E86577776C5E73AE52761C962FBB
            81CA1E20685C6B8FDE54ADF595185EB2B2E185425F718FBE55917FEAD461BB78
            A9E49B4289AAEE2FAD47EA7013DEDEEC0580CD061F7D512FAFDC7F22D5B2EE10
            D3B37C5C762375C926475CB6B947EE09F897EB8B5AF976839103881100E896F4
            A891D7EB1FA26F999EC3664ACA29C9479AAE343D07B03D7B8EB8F268BFF5FDF9
            5E478BD5117F668B14D76D74454FC90029D4CB8E1223E5CAE9CDE66600BA488D
            1851E9259CEC812A7A9B9EC5722D6E49598DFCDDEFD69B1E04D8D6E0A1975FD7
            DEB2E63AE56762B12D18DE21C594F5AEE81DF7C36C49D1E896AAAFCBA5D3379A
            1D03E8A2CCA8DAC9FA4768AAE939E2417D2331675E5ECEE805745EBD3368E8BA
            D9ED9BD7D6E5E9A07E79B3BB27C41D3A028E88E7790374C2886FBACD0DB79A1E
            242B96B720EC901955F7A8DEB00D373D473CA82774007CCEF414C0FEC3BEB56F
            5BEADDBF64DA37F5353D4B5725A5AB6EDF58F674DDE68EC3444C0E3CA637B6CF
            79BE7356C9DB539F333DCB3633019DA74E19BEBB9771DFD21739876734CA95EE
            60F9C8236F981E04C56BF0F02B27756C5EF3809F49254CCFD2556EB2BCA3B47A
            972FBD3EEFC64754CD847D3C913DFE88AC353D57800D7A437B9DD3DC7187148D
            76BCBDE2430400BAC41B557B8112F20ED373C48954EA4AB769DE14D373A038ED
            3DF492697AE33FA9D047F5CBA56479EFE56E59F531CB1EBD71CDB67F9F1938F1
            74E5CBEBA41407989E711B1D7A0BFBA0EB26EAE59B0FAE323DCCF61000E892CC
            A891BFD19FBE687A8E9879243167EEC9A687407139B0F6B29D5BDBDB9F4AB5BE
            1FDFD3734B479455F4FDEDB245B7EDF03147897AC7DB7DD968E1A8EFE83F7EC6
            E0B41DFAE317AE523F30F90AFF28080074DA87C7FDCF1EAE32B6BF43346493BB
            7AED2E9C1F00853278F8552352ADEFFEDE4BB595999EA5AB9C4489575ED5EFDC
            258F4D89F422DAECA9F43203260C91429E21A4FC92FEABEA42CCA9AF6FB1BEF6
            694E26F94BB9EA81B5466FB4C833039D941A35EA5047F8D6BC90254E94238E4B
            CE9EFB57D373A0E7DB7BD8A5D7A736AFFD5FE57BB17D9C4F9456BD9FACEE77FC
            D2A6FFFB6757BE5FED7E7685E7B47C416FEA46E93F0ED51FBBE570BCB4DE823E
            AD947C3CE1F833E55BD3BB34A349B1FDC180399951B55FD73F3AF7999E238EA4
            5217B94DF378ED04F266CF2167964951B530D5B2EE1811B7F7F8FD9B142595BB
            3CB55CF43D412CAACFE46AA96AB7C907F80935440975B050725FFD57FBE98F01
            11BEB54D6F2C9728295E53BE784D4AF557B723F527B9B671B3E95BAA3B080074
            5ABA6EE40D520A8E6CD7054D2503DFB9B6FCD0735E9C71FEEC6C0E989E073DCB
            A011571CE1B56E5C90EED8D4CBF42C5D251D579557F7FFEEEBF36FFE6121AE2F
            BB974088F6BEA984AC96BE5F257D592D1C3FA31C7F535288F74587BB59AC9EB6
            56C6B7A676880040A765468DFC83FE34C6F41C71F4B7443F7141857E6226E40B
            52A99B7AAF5EFBCB45397C8683E2B5CF49975ED4B6F9BD5B94978AEDD17213C9
            8A56A76AA7BAE58F4E79C2F42CC5800040A7A5478D7C557EB0EB0C9DB44A5688
            93AB876DFB57CBF5F38A5BDDD6C47D8B679DD36A7A3EC451BD3368C87BBF6E6F
            5D7B6A9CDFE25752B1F32B15B2FF512F2FAA8FF56EF5382100D06999512337E8
            4FB1DDC568525A38E2D85EA3B7F74FD9570DDF95F64A6F7BB9F1EBEF999E13F1
            B0EFC9D70EE8D8F8EEDF326D1BA2FC1EDB4A523AA2A4AADF036F2CB8F56BA667
            293604003A25FB161B6FD4C8ECDBD8380260171DA70320B5E3739A6DD6B7F1FD
            092F316571E3396F999E15F61A34E2AAD3D39BD64EF332ED49D3B374959B284D
            9756F61DF7FAFC290F9B9EA5181100E8940FCF00C82EBA6E185E5D2BDE97A187
            2F4F2B211F12D2FFC90B332E7CD9F4CCB0CBA0132FB9A7A3E5DD7394B2EAC8B2
            9D922CEFBDAABCAAEA9857E64CF997E9598A1501804E51A3467DC213FE3BA6E7
            88B32F540D13CD4E45D42FD71D201EF785B8EDC51917CC323D3BCC1A7CF445BD
            BC72FF8954CBBA434CCFD25552FFAFB4BA6FD3B205BB9C2C447DDC4FEC1B6B04
            003A45D5D6EEE6B9F26DD373C4D9A95543C50AA7B22BDFBA582A71DB60BFDFF4
            C6C6D3E2FBD40F5D32F8A4AB8F49B5BF3BDFEB68EDD20F8F0D1C27E997F4EA7F
            F5B2C7A6704E0C0B1000E894B34EF9FE61F7669E7CD6F41C7136A26A8478CF29
            EDCE22960A25EEE8535E71EFA207BFDA6E7A7D907F834FBABCBE7DD39AEF2A3F
            13DBC7EC4469D586AAF2FE435E7EECFAE74DCF820FC4F687098577D8B83B26EB
            4F77FD6DE3ECAAD8BED1D802C7558F12299993D75066CFC7708F284BDDF2FC83
            97AD37BD5EC8877A67D0D075B3DB37AFAD8BEF6168B247F5DBF9859DABFB1DB7
            78563D6F75B508018050C78EBDA9BCD52DFDB1FE61B938FBE73F6E6C12958263
            D77445463AE298EAD1DD5FD0B6A4D8A494784078CE4F5F683C6FA5E975446EEC
            3FEC5BFBB6A7D63D996EDFB88BE959BA4A4A579555F5BF69E9829B3972A88508
            00043A62FCEDFBFBBEF32B25C5A7B7FEDDC39B178A3D7CDE08D015AB9D3231BA
            6A789E96AE524A383313D2BB7EF18C8B5E35BDAEE8BA7D875F31B96DF3DAFBFD
            4C2A617A96AE7293E51DA5D5BB7CE9F579373E627A166C1F01801D3AECF43BCF
            D01BFEBBF4C58FBCE8E896D6A7C5F199D5A6C78BA567127DC57915C7E6FB6A7C
            7DD79EE328F1A367679EFF94E97546E7EC3DF492691D9BD74C8AF351FD92E5BD
            97BB65D5C72C7BF4C635A667C18E1100F82FD95DFE6D6EE9ADFAE237B6F7EF97
            B6FF534C4A2D333D662C3596EC297E52F6E9EE2F2832F9175FAA9F70F221FBED
            35EC9A5D45FABDA7536DEBF7303D4B9749479455F4FDEDB245B77DD1F4280847
            00E0230E3FFDCE037C297EA52F1EB4A3AFF962FA5FE29AB6174D8F1A4B37961D
            241E2AD9CBC455BFA837FF5338F9909D060FBF6A44AAF5DDDF7BA9B632D3B374
            959328F14A2BFB9EBD74FE4DF79B9E05D11000F8B743C7DFF175A1E46DFA6279
            D0D71DE06D10D35A385957577CA3F238F19C6BF4355DCB951237255A13F717D3
            C9879418EB8ADD13FB78AEBBBF0EA1FD94C89E0BDE1F20A4ACD27FAE52425467
            BF4E3F20B6E8CB2D42AACDFA9BDE91D259A27CB5C417E2B564F94EAFCAA5B777
            E47AB641232EBFA163C3EA2B94EFC5F6F1385956BD3651D5E7D8A54D37B06B30
            4662FB0387DCD9EF94FF575D5ED1768FFE719810E5EB1DFDC8387FD33CD14BA5
            4D8F1E2BEDC215437B8D0C3A0F4021AD954ADED1FEDEF219AF3C76C3EBA687C9
            87D4804987B8429DA81C3954FFC87E56FF55EF6E2EB24D7F3CA98361812F9C85
            89956D4F4BD1D8E503321D31A6BEE2BD4D6BFF926A5977A8E9DBAACBF416443F
            EB5FF086EA5B2BD8B3143B0440913B6CEC3D9F52AE97DDE57F6067BE6F4AEB33
            E2739955A6C78F95BF26FA8B8B2A8E363DC647BCBBFC2FFAD95B9F57924ED945
            4B16DEF4B8E979BA4B0D9858E34B39513F63FF9A7E70DB37CF57F78E12AA51F9
            F217256F3774EAE05883465C7184D7BA7141BA63536CCFAA299D2D6FF1FBF6D2
            C76FBEDEF42CE81A02A0887DF82AFFBBF5C5C807A6DF6A5C6AB9B8B2FD25D3AB
            102BB7971E207E513AD8F4181FB176D99F3EB8A01F099225BD569794575FB5E4
            B129D34CCFD559E981936BA55257EB8B270A038F6B528A67955253DCE6D4CCB0
            BD02FB8CB8F2E2B68D6B6E565ECA8A5D415D914856B43A553BD52D7F740ABF0B
            8C3102A0087DB0CBBFFD5E7D717C5797B19BDF267EBF79BE1D3BB363E2CB5527
            8A379D2AD3637CC4BF03601BC9D2EA8D6E59D56DCBE6DFFC1DD3F305D9726AEA
            9A895FD09FAED17F3CD2F43C1F5AAAE7F9B1DBBB7D9A7CB931F5D17FAA77060D
            79EFD71D2D6B4F55F13DAC9F28A9D8F9950AD9FFA89717D57330909823008ACC
            21E3EE3E4C0A7FA6BEB84F7797756FCB93E2086F9DE9558A8597DC9DC49995C7
            9B1EE3BF6C2F00B64A9454B626CAAA1BCA76EE73D1CB8DF5A94E2C36EF3A6ACE
            38D895FE5D7A3BFA3FA667D91EBD797F5D48795172C5B479D93FEF7BF2B5033A
            36BEFBB74CDB8601A667EB2A291D5152D5EF813716DCFA35D3B32037088022F2
            E12EFF7B44C8ABFCA3FA7C6A85F84E3BE7F58822FBDEFFEC31006C1314005BB9
            89B274B2B4D7ECB252F7EB2FCFBBF93D93F3AAC1137B653A9CEF49A52ED47F8C
            C351F2664CDE7B973FFE25BDE1762FD39E343D4C57E99F815469E52EE35F9F3F
            E561D3B3207708802270F4C4DB7AB5FB897BF583E6B85C2EB7526544D3E6C744
            85E2C5BF41B227FEA9AB3A496C9025A647F92F510260AB2DA772ADE8FDA74455
            D9575F9B75E3F242CF9ADA63C2118EEF64F75E0D2AF47577C726FD287B551F4F
            3495C573B77FB2BCF7AAF2AAAA635E9933E55FA667416E11003DDCC1A7DF71B8
            2365F641332FAF3EE3A880E17E55B297F869D941DD5F501E742600B6CA9EE025
            59D1E745A7A4ECAC658F4E595C8839BD9AC9672BA16ED717EDABA808B29BFE07
            2B7DF1A35EBE88CB9B67A5FE5F6975DFA6650B763959887ADFF43CC83D02A007
            3B74DC5D67EB879EEC817DBA75F2F920BBA80EF1874DF3F515F0F8B03DD9B3FF
            7DB1F244F1B6D3E9375A14445702E0DFA4CCBE85F08D6479E5C5F93AE18B1A7C
            51A9D7B6FE1742AAD34DDD46B9F44C5289AFEFEC89F596BF7A76CBDE9E5EFDAF
            5EF6D89429A66741FE10003D5076977FCA737FA69F7514E441F37FDB5F145F4E
            B177707B7E9FDC43FCA0FC10D363EC50B70260ABAD6F21ACECF59D25F36EBC2F
            57B3A97E63ABBCD2925FEB2BA835791BE5DAEB0925CED011F0B66B7A92ED4B94
            566DA82AEF3FE4E5C7AEE7053E3D1C01D0C31C3EE1AE237C5FCCD40F9F05FB3D
            E9AE7EBB686C59C86B013E267BE4BFB155278A779C9CBCE6322F721200DBF8CF
            5B087B5FD79DDDC66AD7C9FDFDA498A3843AC2F46D940F2BDD0F2260A9552F63
            94A2A472E71776AEEE77DCE259F5457398E8624600F4184A1E7AFA5D170BA97E
            AAFFB316FCF7A49353CBC425EDFF347D2358E5CED2FDC503A5DD7EB7655EE53A
            00B6724BCADB9365BDA7F6A9E87359673726D957FAFB1D72A152E270D3B74F3E
            AD7684F8525F4FAC70CDBF3870CB51FD2AFBDFB474C1CD579A9E05854300F400
            478CBDB7B797C8DC973DE389A9195C7DE50D9B9F10FBF81B4DDF1C5678CBA912
            E3AA3E67CB71FF77285F01B0959328C99494F699254A4ACE8D726E7875E0D812
            6F7DE96CFDC834DCF46D53086FEA8DFF977504AC35F863E226CBDBCA4A771AD3
            130E058DCE210062EEB071B71FA9C496B746ED6D7A9683BDF7C47D2D4F6E8981
            6296DDEF7D5EE57162B1D9B3FE4592EF00D84A3A493F59DEFBE94AB7EC9C971E
            BF71BBE79256A2DEF16A5E6FD45F5D54E7927F31A9C469BBF8A24D16FE7EA3FF
            9B2C2F71AA8E5AB268CABBA66F07141E01105B6677F9EFC859A9D7C579EDAF9A
            1EC3A875A2E4A6DA5EB59BF4C54B45F7CF409757850A807F938E4896F57E2359
            567DEEEB8FFEF4B16DFFC91B30E91A25C58F4CDF2626CC2C57E2EA3E5D3EB160
            E7E9FF0E65157D7FBB6CD16D45155BF828022086B6ECF277333FD717BF6C7A96
            8FCBEEC9BCB5E52971ACB7D6F428A6FCD1ADAC1E261B1BBDECBB313A32EE57F5
            BD2C7B929ADD4D0FB63D050F80ADB6BE73A0B4FA9B4B1E9FF28BD48089C73852
            664F2C13DBA3E575D715BD3DF1EB8AFCEF057012255E6965DFB397CEBFE97ED3
            EB0CB308809839F4F43B3FA3FFAB6577F9EF657A961DD9D9EF10535BFE2C3EA1
            8AEC85C44ABCEDFAEA48396FDE3BDBFEF5E0BADB4AAB7BB9A72B475CA3BF663F
            D3636ECB58006C63D764D5A6C75776A86A4FC5F6D4B8B9D0AA1F8DC7F4CDE4F5
            9D01C9B2EAB589AA3EC72E6DBA81A3778100888FADBBFCC50D2206CF92F6F037
            8B9FB73EB925068AC4465F389F2B993367C7EF9DAEAF770E7EADDF6847896BF5
            9F8E363D70960D0170C37A479CD666F78B250B257BA0A0B17DBD3CBC8A26FB16
            BF5D9E5A2EFA9E2016D5F37E5D6C4100C4C011E3EFEDEBA9CC83FAE268D3B374
            C6A7BCF5E29ED6BF16C3F101DA95706A9373E6443E37FA21E3EF3C5E2AF94D1D
            76D9FFA6C6EE87A603E0C89414BF5EE7F240B48D2BFBF8A2B13C7747D6DCF216
            BFAAFEDF5EFAF8CDD79B5E37D885FB9DE50E9970F751D2DF72FADE3D4DCFD215
            C764D68A1BDA9E11E5AA802F702AAC76A1E46989A6A6595DF9E6C34EBFED105F
            26AE90428D1706CE6E67320012FA69EE6CBDF13F20CDC3D0B6DE778438B15F66
            CBE7EE4A242B5ADD5EFD6ADF98FB933F9B5E2FD8877B9EB5E2B5CB3FC8FFA4D7
            CCB9A5ED6F47E91FB6BEA667C92DB55E09F7F39D79E6BF23078FBD7D2FE93A97
            EADBE8EBFA8F053B7180C90018DF2AC58F37587A3C5CC3EEADF4C5F5BDBAB717
            A0A462E7572A64FFA35E5E54BFD9F4FAC04E0480853EDCE53F555FAC333D4B37
            B5E98F4B9E7FE882FBD4E8D10778CA9FAB379A7B981E2A4756F9C2A90BFC9D7F
            171C36F6B67ECA752FD0B7D345FAEEB973BE57C25400640F7EF7F8BB09B1578F
            FFED50D7645F10787C7F4FAC733AFF6A00291D5152D9F7FE3716DE7696E9F580
            DD0800CB1C76DA1D9F558EFCA5BE38C0F42CDDF48AAF9CD35E9C79DE4B5BFF42
            D5D5F5F3849AA67FEA627E7217F584EB2427C8D9B357E6EB1A0E1C7B6755D211
            6709A92ED777D3BC4593A90038B54D8A5BD6F3EC3FC8AD55BEB8A9BA737B01DC
            4459AAB47297F1AFCF9FF2B0E9F9613F02C01A3D6797BF12725AA2C53D77F1AC
            735AFFFBDF84F447D55EACBFE64661E077DEDD5D353DFFED89D56BAF948B1717
            E4B4EE479C7D6FD2DF9019AF3E3896C081B95EBEA90098BFD615FB6478F809B2
            51DF3CC7F6F7C4E6887B0192E5BD575595551EF5D2A337AD303D3BE2817BA005
            B2BB7D7DD79DAAFF638C343D4B376DD65BF8739F9F79C1F4B02F4C8FAE3D417F
            EDBD52C8034C0F1D857E085EA21BEDBC6453D3024313C8C34EBB7B9872C425FA
            F2C9B95AAA8900383C25C56FD7F1EC3F8A28EF08D0F721515ADDB769D9825D4E
            EECE1918517C0800C30E1D77FB10219CEC06D3CA23C54526D53FF546F2B41766
            5CF872D46F51471C91F477ED7BBE12F207FA8FD5A6576107DAF47AFD34D1DAFE
            63B96851BBE961B2B2A77CF67C7189146A82C89E87A91B4C04C00F373862722B
            EFFB8FE2C95225C6EFBCE377D0384ED22FE9D5FFEA658F4D99627A56C40F0160
            8C92878CBBFB6AFD209E3DF679AC9F0E05EDF28FF4FD634EDAC3F312DFD51727
            EB0F5BCE6B90DDC53FDD75FDEFCB598F2E373DCCF61C3EF6CEC19E2B2ED217CF
            D677E4B2AE2CA3D00190FDDDD633AB1362279EA74692DDF97F42FFED9F323851
            5AB5A1AABCFF90971FBB3EA72F4445F120000C3878F2DDFDDD949AAAA48AF78B
            E1A4D8A47F80CE796EC6053372B1383562C4C04CC2B9B2D06F85FB9894FE98E9
            3ADE0FE4ECC75E373443A71C34FE965D132A799EDE5A5CA2FF9BF4E9CCF7163A
            0086B54B71FFFBB1EEDD82FB512F4FFCAC72DB00C81ED56FE71776AEEE77DCE2
            59F54576BC6DE412015060879D76D749CA510DFAE2AEA667E9A6E784E39EFEFC
            2FCFCDF946527DE10B7DBC8E8E538454D93D02C344017E4EF5C3EB3F1D29A73A
            6EEA41F987C757E7FBFAF2E1D0336FEE233A4ACF534A5DAC6FB04F44F99E4207
            C07737BAE2AC161E763A6361A912677EF86B80EC51FD4AAAFAFDF88DC76FB9C6
            F45C883FEE89053276ECAFDCD7DDB5DFD117BF2D8A7C977FA7AE6BD4A87D7DE1
            7F516FA04FD47F3C5EE46ECF40F618057F914A2D7412EA6139EBD11E730EE303
            C7FEAAA4C4593BCE97E25BFA0EBE7FD0D7163A00E6BDEB8AFD39F25FA7647BE9
            E04F64844A96B79595EE3466C9C29B1E373D137A06EE890590DDE5EFA4FDECB3
            FEE1A667E9A68D7A8379CE73332F7CC8C495ABB1634B32AD1B8F76943C520741
            F6AC7AFB6E39BB9E0C7D01E52AFD75D90DFC1229D4125F387F4F08F1946C6AEA
            D9672AFAF0E44352896BF41DFD98ED7D49210320FB7BFF675727042FFFEBBC49
            BB95BFFD6C65AF43962C9AF2AEE959D07310007976F0F8BB874AE54F8FBA4BD6
            567AFE67A5274E7FB6F182A5A667D91E75CA29D5FA497DB5C824AB84AF9FFB96
            789B443AB1596FE4379A9ECD063B3AF95021036068BB140FF0FBFF2E91525DE9
            AE98CE2BFD915304409E6CB3CB3FFB11F3273DEA679B37F8172F6DBAB8673F63
            2E02878FBFEB604F892BB79E7CA8900170768B14D76E2400BA46DE97689E76B6
            E929BAE38885AFF57D63CDBAB5A6E7C07F10007970C8D8BB0738AE3F43097182
            E959BA4589F57A1DCE7A61E6051C56B487C99E7CC8759DCBD7BEF1E485AA4067
            6ACC9EF8277B022074C91389E686CF991EA23B0800FB706FCCB1C3C6DD31CC17
            B221EEBBFCB5C5AEF24E5F3CF3E265A60741FEEC3FEC5BFBA6FD4D3FEB687DFF
            B3CAF7F2FA78D0B8CE1547A578C8E9122556275636C4FA318500B00FF7C61C19
            32A43EB1FE13FDB2AFF0EF11BBFCD35EFF8B5E6E3C2D657A1214C6A01157F657
            99F4944CDBFAD3BD4C475ECE45F1A735AED823BF8DD1A3B9653B95C9A5B7C7F6
            D77004807D62796FCC9E50468C1EDD47A4D3552299AC4A2B55997DE15752CA16
            91486F167EE926F1C823EBE50707D2CABB8327DE56E3786EF66038C79BBE6DBA
            698350F21BCFCF3CBFD1F420304487ECA0C486EBD26D1B2EF352AD95B95CF4F3
            1C01B05B5CE5F4952BA7AE333D47571100F6B13E00B61C1426DDFE5925E49152
            A9FDA450FBEACBD9B78095877C6BBB5EB9D7B22771514A2D91AE5CECA6D51FE5
            BC79EFE572BE1E74609FBF7B8E3CFD1FBF3CFF0DD383C00E7B0FBBE27CBF63D3
            77D31D1B73F2B3FDFA3BAE28B1FF21C75AAE2BF796FF9A66E561A9A32000EC63
            E5BD315557778C94E254BDB11FAAFF7898C8DD81737CA9C4F3FA49C802E1F8BF
            4D3CF2E85FBBBA97A007EDF2DF728ADB8CD7EF2A76F9637BF61E7EC578BFA3F5
            8799B6F57BAB2EEE54CB9EF779D93B713BFBB35D3CE11C52DA3CF545D3737415
            01601F6B02207B4218DF4B9CA137CE93E407077929C4DA2F95424E731C6F5A67
            4EF872D0B83B0726849CA1A7FE1F6337586E6CC81E77FFB9872EF8B5E94160BF
            FD865D7E62CAEBB839DDFAFE214A756E5F7E85EE8657561100DDA19FBD1C55B2
            62FA33A6E7E82A02C03EC603A0A3B6F640D7CD1EA0446C795FB2A131F4A3999C
            E30BF9BD923973FE1EF485078FBF738CA3D483FAEB7736346BAE3CE37BFEE92F
            365E14DB5D8A306370DDB73EA5DA37DDD5D1F2FE67958AF6AABEEC17BDF10E47
            01EC0ED717FBCBB71B5E333D47571100F63116001DA3471CE4AAEC79E0E5E74D
            CEF131D9FD9BB37D477DA764F6BC17B6FD0776F9031FF5C9DA6B764B746CBE33
            D5B1FE143F930AFD35DDCBAB5D51E5DB72578F1F576606C8150FBD6D7A8EAE22
            00EC53F07BA31A33A622E3A5AFD657FC2D61CFB9DF3FCED729F07357C8ABB287
            923D62ECBD7B786E26FB2AFFE34C0FD64DEBF47FF2AF3CFFD0F98F981E043DC7
            8143EAABDADDF553D26D1BBEE2A5DB4A77F4754FAF4E885D79174097B91D1DD5
            726DE366D373741501609F82064066F4C853F486F54E7DB1C6F48A47A2C4DBBF
            2F1938ED07E5877C23FEBBFCD5D3FA21E4F4E71F3AEF4DD393A087FAF02D8499
            B68D9764522DD51FFF67CE04D82D1D6E734379A1DEDA9C0F04807D0A726F5443
            862432E5A53F94525E5DA8EBCCA539C91A717DF9C1A23D9E67F1DDB2CB3FD12B
            71E5E29F9D93363D0C8AC37FDE42B869D7ADDBAC7BDE77455D7BECEEFE56D0B7
            DA4B3A003E6D7A8EEE2000EC93F77BA31A33622FCF7366EA8B9F31BDB2DDB1C4
            ED25BE557EA4F89793D363A3E4DBBB52C9339E9B797E93E941509CF639E98A2F
            A653AD37A4DBD7EF7DD546292EDC1CE797CF18F59B4473C3974D0FD11D04807D
            F21A00A951A38E74849FFD7D737FD32B9A0B1B65525C5E7E94783E1183DF0648
            F184CA38135E683C6FA5E951804123BE79DC84B5EFCDB86E6DDB1EA667892325
            C5F5C9150DD79A9EA33B0800FBE42D00D2A36B4FD4CF3E7FA72FF632BD92B994
            128EF876C5E162416237D3A3EC08BBFC61A5D48009873AD279CEF41CB124E5F8
            C48A690F991EA33B0800FBE4250032A3477E5128917DD5BCADAFF2EF164FDF6C
            F5E58789A6E400D3A37CDC5A478A339E9D71C15CD383001FA744BDE3D52C5DA3
            2FEE627A9698516E22B1BB7CF3C155A607E90E02C03E390F800F9FF9677FE75C
            DAED8559CCD737DDD5E5478A45496BCED0F94729FC09CF3D74516CDF278C9E2F
            5333E961FDE954D373C48914EA65B779FA41A6E7E82E02C03E390D80D4C9B587
            38BE58A417DBC7F48A15428770C40515C79A7E4D80D20F103F1DECF5BFB6B1F1
            34CFF46D0204F16A265EA484BCCDF41CF1226F4F344FBBD8F414DD4500D82767
            01A0468C18E8259CEC61747BC40BFEA2DA204BC4572A4F10CD4E8589AB5FAB7C
            7FF20BBFBA689EE9DB0188427D72F25E9EA7968918BE1DD81425E5C8E48A69B1
            BF8F1300F6C9C99D30FB3E7FAFB26CA150E278D32B64C22B6E6F7156E5F15B5E
            205830522C74DDC4C4C50DE7BC637AFD81CEC80C98F427FDF35B948F159DA6C4
            6A7765738D148B32A647E92E02C03E390980F4A8BA9F48A1AE36BD3226CD28D9
            5B4C293BB0105795DDCDFFC37DBC7E3F60973FE2C8AB997CB612EA5ED373C481
            52724A72E5B42B4DCF910B04807DBA1D00E95123864BE1CCCBC5B2E24CE9D5BF
            BCE233E24F895DF379356B8454939E9F71E163A6D717E82AB5E7997DBC4C26BB
            E7AACCF42CB6F39538B46465C30BDD5F927904807DBAB5D1567575A519A95ED0
            0BD9CFF48AD86095AC1063AB86883699FB43064BA1163889E42476F9A327C80C
            987497FEA13ECFF41C965B90686E18667A885C2100ECD3AD00488F1A59AF1770
            9DE995B0C9FDA5FB88BB4AF7CFE522B7ECF27F7EFFB5DF17F5F59C4B0D3D82DA
            FD8C3D3CC77F5DF4D06385E48252FED0E4CA5F2E343D47AE1000F6E97200E867
            FF833CA95E12ECC6FB88B470C4F8AACF89379DAA5C2C6EB5F4E5A4E77E75FE7C
            D3EB05E45A66E0A40785125F313D87A59ED2CFFE8F353D442E1100F6E9720064
            EA463EA8BF9B3BEF76CC4B0E10D7961FDEAD6528211E2FF1C4A4671A2F88F5D1
            BF801D513593067B42649F44F4E88386758552EAA4E4CAE98F9B9E23970800FB
            742900D49893F6F0BC04BBEF76207B94C0B1552776F5CC81D9B7FBFC885DFE28
            06E901937F28A58AF5496E724EC9998995D3C6991E23D70800FB74290032A36B
            EFD23FA4BC8027C0EF4B068A1F941DDAD96F6B56528C7F61C6057F363D3F5008
            AA666CB9274AB37B01F6363D8B2536B9C23940364FED7167F12400ECD3E90050
            B5B53B7BAECCFE70F2BBFF0019E988D15527897532E2DE4D29E667447AD24B33
            2E5D6D7A76A0903203268DD63FFFB34DCF6103A9D465EECAE9B7989E231F0800
            FB743A00BCBABAF3945477991E3C0E6E2E3B504C2F097D62C32E7F14BD4CCDA4
            DBF5A70B4DCF61D85CB779F068297AE6E30001609F4E0740A66EE493FABB7AD4
            AB53F3E535B7B79858F9D980AF506F4929C63D37E3C2BF9A9E1530491D7176D2
            5BDDFA84BE788CE9590C59E9669287C9550FF4D80D2401609F4E0580AAAD1DEC
            B9724967BFAF988DAB1C2296BAD5FFF5F752895929BFF4CC971BBFFE9EE91901
            1BA8815F19E4292F7B42B1A2389BE836D24A8A61C9150D7F323D483E1100F6E9
            D486DC1B5D77A552EA06D343C7C93DA5FB8B9F97EEB3ED5FB1CB1FD881D48089
            C7385266DFFE66E4F49A062821E5D7122BA63D687A907C2300ECD3A900C88C1E
            F988FE711D657AE8387926D1579C57B1F53726EA2D7D938F7FFEA10B9E343D17
            60ABCCEE93C708473DAC2F264CCF926F528AABDC150D379A9EA3100800FB440E
            802DA7FCAD285BA72FF6323D749CA4A42B4EAC1E293A84FC43DA2BFB2ABBFC81
            70998113BF2694BC4F5F2CE039B60B4B09F5D364F3F46F9A9EA3500800FB440E
            80F4C9238F95BEE0996B17FCB8FCA0FBBEFD9B1BCED9F29B7F0091646A269EAA
            EF33BF143DEF2DC74A3F107C3FD9DC506F7A90422200EC13390078FB5FD7E91B
            F97277CEDC9B4DCF01C44D7AC08413A5747E277ACE9E474F6FFFCF4B344FBFCF
            F420854600D827FA1E805175B748A12E313D704CDD9B9833F75CD3430071941A
            30E91029C5AFF483D5BEA667E9A635CA1193926F353C667A10130800FB440E80
            CCA8914DFAD348D303C792128B124D734F343D061057AAEFD7AABDB2F43DFAD2
            04D3B374D113AE7026F4C443FC464500D8A73301B04C70BCEEAE7A273167EEEE
            A68700E22E5333E9EBFA53F6ADC871395640877E90FD3FA7B9E38752347AA687
            318900B04FF400183D72937E269B9393DC17A18C0E80A4E921809E40ED357E57
            2FEDE808909384D50725930B5DC7BF50BE35FD9FA627B10101609F48771E555F
            EF784F3F95163DF82D39F9E6565657C8C6C636D373003D45BA66F2E7A4503FD1
            178F363DCBB69410AF4925BF935839ADD1F42C362100EC132D004E39A5DACBA4
            369A1E36CEDC8CBFAB7CF4D135A6E7007A9AF41E671C2F7DF54DFD4875B2C939
            F483E94B4A891BDC951DD38B7D77FFF61000F6891800C377F7326ED1BE782517
            5C4FED23E7CD5B6A7A0EA0A7FAF030C25FD5174F13857B8D409B7ECAFF7B21D5
            54B779FA5CB9650700B68700B04FC40018B6AB9749AE323D6C9CB9AEBFB79CF5
            E872D373003D9DDAF3CC322FED8DD117BFA437CCD977DFF4CFF1556CD48F9C7F
            D4D7F43B3799FA8D7CA37183E9758E0302C03ED10260CC980ACF4BB7981E36CE
            5C37D94FCE9AF5AEE9398062A29F8ECB54CDC48312420ED5973F233E3896C07E
            22FA8185DAF483E41225C56BD297CF7B522C4836B7FF9D5DFC9D4700D8275A00
            E8AFF3468DCCBE08D0353D705CB995D5A5B2B131657A0E00FA31ED9393764B2B
            7F77E9895ED271AA8552554239AE70D426E5399B5522F37ED2295927DE7CF05F
            ECD6CF0D02C03E9D390EC07AFDA9B7E98163AA2331676E4F3B9E3900444600D8
            A7138702AEFDA714F200D303C7D4721D001C440940D12200ECD3893D00B5BFD5
            5FFE05D303C7D45C1D0075A6870000530800FB44DF035057FB632965D19CBB3A
            979490B726E7345D6A7A0E00308500B04F67F6007C557FF9FDA6078E23A9E4F9
            6E53D3DDA6E70000530800FB440E808ED1230E7295F30FD303C7912F9CCF94CC
            99F377D37300802904807D2207C0876F057C5B5FFC84E9A1E345AD772B7BF595
            8DBC6F1840F12200ECD3A9336965EA46CED0DF31CEF4D0F1A27E979833EF54D3
            5300804904807D3A190075DF1052FDCCF4D07122A5BCD87DA4E976D373008049
            04807D3A1500AAAEAE9F2755F6A4409CDB3E1ADF55F293B2A9A9D9F420006012
            01609F4E0540566654DD2CD3A7DD8C0FF958624ED308D35300806904807DBA10
            00B5A7E96F9B697AF078506724E6CC9B667A0A00308D00B04FA703400D1952E6
            5594ADD017FB9A1EDE721BDCD6F61AB968D166D38300806904807D3A1D00595E
            5DED779494DF373DBCCD94103F4CCE99FB1DD37300800D0800FB742900D44927
            F5F64ADC37F5B7F731BD02966A7195DC4B3635F1C30E008200B0519702202B3D
            6AE4F5FA9BBF657A056CA494B831D934F72AD37300802D0800FB743900D4E8D1
            3B79CA7B555FEC6F7A252CF39E7EF6BF7F4F7AF67FCA2BCB1FD63F291CCCC81A
            6AF21FF6DFBBC1F41440671000F6E972006465468D3C537F7AC0F44A5845C9B3
            134D4DF7991E23970800DB1000881F02C03EDD0A802DE707A81BB9402F6588E9
            15B1C433EE51C71C23EBEB7DD383E41201601B0200F14300D8A75B0190A5EAEA
            3EE549F58CBE58617A650C6BF77C7174E9DCB92F9A1E24D70800DB1000881F02
            C03EDD0E80AC4C5DDDD78454FFCFF4CA9824853ACF9D33EF1ED373E40301601B
            0200F14300D827270190951955FB0BBDB8334CAF90218D8939734F333D44BE10
            00B62100103F04807D7216006AC4884A3F21FFAC843CD4F44A159294E265C797
            C7C9A6A68DA667C91702C0360400E28700B04FCE02202B7BB6C08C547FD60BDD
            D7F48A15C84AD7CD1C2767CD7FCBF420F94400D8860040FC1000F6C9690064E9
            0818E4E908D0173F617AE5F24A8975AEE39E201F79E415D3A3E41B01601B0200
            F14300D827E70190953AB9F610C777E6E907AA5D4DAF605EE88DBFAF445DC9DC
            B9CF981EA5100800DB1000881F02C03E7909802C3566C45E19CF9D2785DAC7F4
            4AE6D8BF5CD71F29673DFAAAE9410A8500B00D0180F82100EC93B700C852A70C
            DBD54F27E728290E37BDA2B9A06FAC7F384EA24ECE9EBDD2F42C854400D88600
            40FC1000F6C96B0064A92143CA3215653FD15774B1E995EDA6696E6BFBF972D1
            A2CDA607293402C0360400E28700B04FDE0360ABCCE89193F4A7BB851255A657
            BA93DAA550FFEBCE9977ABE9414C21006C4300207E0800FB142C00B2546DED60
            CF75EED297869B5EF18816BAAE7F7E31FDBE7F7B0800DB1000881F02C03E050D
            80AD32757563F435DFA11FC8F6307D03ECC02AA1E437DDA6A66972CB398F8A1B
            01601B0200F14300D8C7480064A92143AAFCF2D28B959497EA3FF6337D437C30
            94582785BAD511CEAD3DF9C87E9D4500D8860040FC1000F63116005B7D700861
            E76CFD34FB0AFDC70186C658A56F889B9CD6F6BB8BF1457E610800DB1000881F
            02C03EC603602B555FEF649E7AEA3829C564E188090578B160875EFDC7845453
            DD556B7F27172F4E9BBE0D6C4500D8860040FC1000F6B12600B6A5EAEA7A79D2
            1F298473A2126A68CECE2D20C552BDF485FAC202B723D324E7CFDF607A5DE380
            00B00D0180F82100EC6365007C9C3AF9E4019E9F3E522AB19F92321B03FBEB8F
            DDF447F5871F651F7E69BBFEC8EEC2CFFEFE7E955EBDD7A414AF29A996B832B3
            B8A79FB4275F0800DB1000881F02C03EB10880306AC89084D8B449B21B3F3F08
            00DB1000881F02C03E3D2200905F04806D0800C40F01601F0200A10800DB1000
            881F02C03E0400421100B62100103F04807D08008422006C4300207E0800FB10
            00084500D8860040FC1000F62100108A00B00D0180F82100EC4300201401601B
            0200F14300D88700402802C0360400E28700B00F01805004806D0800C40F0160
            1F0200A10800DB1000881F02C03E0400421100B62100103F04807D0800842200
            6C4300207E0800FB1000084500D8860040FC1000F62100108A00B00D0180F821
            00EC4300201401601B0200F14300D88700402802C0360400E28700B00F018050
            04806D0800C40F01601F0200A10800DB1000881F02C03E0400421100B6210010
            3F04807D08008422006C4300207E0800FB1000084500D8860040FC1000F62100
            108A00B00D0180F82100EC4300201401601B0200F14300D88700402802C03604
            00E28700B00F01805004806D0800C40F01601F0200A10800DB1000881F02C03E
            0400421100B62100103F04807D08008422006C4300207E0800FB1000084500D8
            860040FC1000F62100108A00B00D0180F82100EC4300201401601B0200F14300
            D88700402802C0360400E28700B00F01805004806D0800C40F01601F0200A108
            00DB1000881F02C03E0400421100B62100103F04807D08008422006C4300207E
            0800FB1000084500D8860040FC1000F62100108A00B00D0180F82100EC430020
            1401601B0200F14300D88700402802C0360400E28700B00F01805004806D0800
            C40F01601F0200A10800DBD81700072F78E1E8B427BE647A0E7CC0759D575F1A
            FAE9FB4DCFB12D02C03E0400421100B6B12F000E78ECD9BB57BDD77EAEE939F0
            81DE95256FBF79F291034CCFB12D02C03E0400421100B62100108C0040140400
            421100B62100108C0040140400421100B62100108C0040140400421100B62100
            108C0040140400421100B62100108C0040140400421100B62100108C00401404
            00421100B62100108C0040140400421100B62100108C0040140400421100B621
            00108C0040140400421100B62100108C0040140400421100B62100108C004014
            0400421100B62100108C0040140400421100B62100108C0040140400421100B6
            2100108C0040140400421100B62100108C0040140400421100B62100108C0040
            140400421100B62100108C0040140400421100B62100108C0040140400421100
            B62100108C0040140400421100B62100108C0040140400421100B62100108C00
            40140400421100B62100108C0040140400421100B62100108C00401404004211
            00B62100108C0040140400421100B62100108C0040140400421100B62100108C
            0040140400421100B62100108C0040140400421100B62100108C004014040042
            1100B62100108C0040140400421100B62100108C0040140400421100B6210010
            8C0040140400421100B62100108C0040140400421100B62100108C0040140400
            421100B62100108C0040140400421100B62100108C0040140400421100B62100
            108C0040140400421100B62100108C0040140400421100B62100108C00401404
            00421100B62100108C0040140400421100B62100108C0040140400421100B621
            00108C0040140400421100B62100108C0040140400421100B62100108C004014
            0400421100B62100108C0040140400421100B62100108C0040140400421100B6
            2100108C0040140400421100B62100108C0040140400421100B62100108C0040
            140400421100B62100108C0040140400421100B62100108C0040140400421100
            B62100108C0040140400421100B62100108C0040140400421100B62100108C00
            4014F29457972BD343E03FD4E6D2CA5947EEDE6A7A8E6D1100B62100108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C0040140480650800842300108C004014048065
            0800842300108C0040140480650800842300108C004014048065080084230010
            8C0040140480650800842300108C0040140480650800842300108C0040140480
            650800842300108C0040140480650800842300108C0040140480650800842300
            108C0040140480650800842300108C0040140480650800842300108C00401404
            80650800842300108C0040140480650800842300108C00401404806508008423
            00108C0040140480650800842300108C0040140480650800842300108C004014
            0480650800842300108C0040140480650800842300108C004014048065080084
            2300108C0040140480650800842300108C0040140480650800842300108C0040
            140480650800842300108C0040140480650800842300108C0040140480650800
            842300108C0040140480650800842300108C0040140480650800842300108C00
            40140480650800842300108C0040140480650800842300108C00401404806508
            00842300108C0040140480650800842300108C0040140480650800842300108C
            0040140480650800842300108C004014040050C4FEF4C23BA647006008010014
            310200285E040050C40800A07811004011230080E2450000458C00008A170100
            14310200285E040050C40800A07811004011230080E2450000458C00008A1701
            0014310200285E040050C40800A07811004011230080E2450000458C00008A17
            010014310200285E040050C40800A07811004011230080E2450000458C00008A
            17010014310200285E040050C40800A07811004011230080E2450000458C0000
            8A17010014310200285E040050C40800A07811004011230080E2450000458C00
            008A17010014310200285E040050C40800A07811004011230080E2450000458C
            00008A17010014310200285EFF1F2E894806EF4269F40000000049454E44AE42
            6082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 26.456710000000000000
          Width = 570.709030000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            'PT. KELOMPOK 6 SEMAKIN DIDEPAN.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 102.047310000000000000
          Width = 268.346630000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'LAPORAN DAFTAR  BARANG')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 128.504020000000000000
          Width = 1179.212896220000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Height = 34.015770000000000000
        ParentFont = False
        Top = 222.992270000000000000
        Width = 1171.654300000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779529999999990000
          Width = 1179.212896220000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779529999999990000
          Width = 146.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ID DETAIL BARANG')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 150.472480000000000000
          Top = 3.779529999999990000
          Width = 152.018428110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ID BARANG')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 3.779529999999990000
          Width = 201.152318110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '        NAMA BARANG')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 3.779529999999990000
          Width = 121.782188110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'JENIS BARANG')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 879.921770000000000000
          Top = 3.779529999999990000
          Width = 53.750648110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ' ISI')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Top = 3.779529999999990000
          Width = 61.309708110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'SATUAN')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 1088.504640000000000000
          Top = 3.779529999999990000
          Width = 83.986888110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VARIANT')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 718.947928110000000000
          Top = 3.779529999999990000
          Width = 74.881880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'BRAND')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 317.480520000000000000
        Width = 1171.654300000000000000
        DataSet = FRDB_DATABARANG
        DataSetName = 'FR_BARANG'
        RowCount = 0
        object Memo8: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 158.031540000000000000
          Height = 18.897650000000000000
          DataSet = FRDB_DATABARANG
          DataSetName = 'FR_BARANG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '            [FR_BARANG."id_detail_barang"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 150.472480000000000000
          Width = 212.490908110000000000
          Height = 18.897650000000000000
          DataField = 'id_barang'
          DataSet = FRDB_DATABARANG
          DataSetName = 'FR_BARANG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_BARANG."id_barang"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 340.286208110000000000
          Width = 211.944960000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = FRDB_DATABARANG
          DataSetName = 'FR_BARANG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_BARANG."nama"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 549.067296850000000000
          Width = 169.042939370000000000
          Height = 18.897650000000000000
          DataField = 'jenis_barang'
          DataSet = FRDB_DATABARANG
          DataSetName = 'FR_BARANG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_BARANG."jenis_barang"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 718.110700000000000000
          Width = 161.483879370000000000
          Height = 18.897650000000000000
          DataField = 'brand'
          DataSet = FRDB_DATABARANG
          DataSetName = 'FR_BARANG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_BARANG."brand"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Width = 123.688579370000000000
          Height = 18.897650000000000000
          DataField = 'satuan'
          DataSet = FRDB_DATABARANG
          DataSetName = 'FR_BARANG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_BARANG."satuan"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 880.630490000000000000
          Width = 127.468109370000000000
          Height = 18.897650000000000000
          DataField = 'isi'
          DataSet = FRDB_DATABARANG
          DataSetName = 'FR_BARANG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_BARANG."isi"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 1093.320080630000000000
          Width = 78.334219370000000000
          Height = 18.897650000000000000
          DataField = 'variant'
          DataSet = FRDB_DATABARANG
          DataSetName = 'FR_BARANG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_BARANG."variant"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 158.740260000000000000
        ParentFont = False
        Top = 396.850650000000000000
        Width = 1171.654300000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 113.385900000000000000
          Width = 1171.654300000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Top = 114.385900000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 1065.827460000000000000
          Top = 121.944960000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 124.724490000000000000
          Width = 192.756030000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CUKUP SEKIAN')
          ParentFont = False
        end
      end
    end
  end
  object FRDB_DATABARANG: TfrxDBDataset
    UserName = 'FR_BARANG'
    CloseDataSource = False
    DataSource = DataSourceDETAILbarang
    BCDToCurrency = False
    Left = 744
    Top = 152
  end
  object FRDB_DATASTOK: TfrxDBDataset
    UserName = 'FR_STOK'
    CloseDataSource = False
    DataSource = DataSourceSTOK
    BCDToCurrency = False
    Left = 744
    Top = 208
  end
  object FR_STOK: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45284.749225497700000000
    ReportOptions.LastChange = 45287.945960393520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 632
    Top = 208
    Datasets = <
      item
        DataSet = FRDB_DATASTOK
        DataSetName = 'FR_STOK'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 200.315090000000000000
        Top = 18.897650000000000000
        Width = 1171.654300000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1171.654300000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 30.236240000000000000
          Width = 124.724490000000000000
          Height = 113.385900000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000020000
            0002000806000000F478D4FA000000097048597300000EC300000EC301C76FA8
            640000001974455874536F667477617265007777772E696E6B73636170652E6F
            72679BEE3C1A0000489C4944415478DAEDDD07B82C45B5F6F1F5919304C948CE
            4105C18C5740454101490A284A30E700A66BC284395E4541E5120441241B5051
            40C5042A4A068143062549908CDF7A6F9D96E1B0F79E9EEA505DDDFFDFF3ACE7
            7A39BB66AA67F69E7EA7ABBAEAFF190000189CFF97BA030000A07D0400000006
            88000000C0001100000018200200000003440000006080080000000C10010000
            8001220000003040040000000688000000C00011000000182002000000034400
            000060800800409CA5BDB6F07A9CD7035E977A9DE17577EA8E0140190400A0BC
            05BDB6F17AA5D7565EF3CCF1EFF7789DEC75B8D78F2D040300E824020030B3B9
            2D7CD3D7497F47AF854BB6BBDEEB18AF43BDFE94FA2000604E0400606A9B5838
            E9EFEAB54CC5C7BAC0EB300B61E086D40706004200001EB68A8513FEABBCD66A
            E0F11FF2FA8585218263BDEE4A7DC000868B0080A17BACD7CE16BEED3FD3DAFB
            9BB8DDEB440BC3043FF27A30F50B016058080018A205BCB6F47A85D7F65EF326
            EECF355EC7791DECF597C47D01301004000CC55C16BEE1EBA4BF9BD763527768
            1AC57C81FFF5FA7BEACE00E82F0200FA6E030B277D5DE25F3E756726A02181D3
            2CCC17F8BED7BF52770840BF1000D0472B59B8656F4FAF8D5277A606B759585F
            4057067EEEF5EFD41D02903F0200FA6271AFED2C7CDB7FAEF5F777FB2AAFEF7A
            7DCBEB6FA93B03205F7DFD90C430CCEFF57C0B27FD177BCD97BA432DFBA38521
            8223BC6E4ADD19007921002037C564BE9778BDCC6BA9D41DEA807BBD7E666188
            E004AFFB53770840F71100908BF5BD5E6AE1DBFEEAA93BD361B75A585B405706
            7E9DBA3300BA8B00802ED34E7B5AA447DFF6374DDD990C5DE475B4852588AF48
            DD1900DD420040D72C66613C5F27FDA976DCC3E4B404F16F2D0C116802E11DA9
            3B04203D0200BA2076C73D4C8E2D8B01FC1F020052AA73C7BDB615CBF71EE275
            9F852B167B78AD9ABA631360CB6260C0080068DBBA164EF82FF75A3375672634
            6E419ED1E586758C8BA6EEF004D8B21818180200DA906AC7BD3A14B7D8E99BF2
            244BF2766DC3A1B246B72CD6158E3B537708403372FA20465E16F4DAC6C249FF
            0596CF09508A49733AE9D7B1C8CE12168608720B40777BFDC0421860CB62A067
            72F920421E72D9716F3ABA0CAE93BE2E855FDED073AC626178606FAFB5531FF0
            04D8B218E8190200EA50ECB8A74970CBA5EECC84AEB370695F27FEB617CE295E
            B73DBD964DFD424C802D8B811E2000209676DCD352BC7B79AD93BA33131ABDB4
            DD855BE1466F83DCC16B91C4FD298B2D8B818C110030098D656F6B79EEB8377A
            B23AD6EBAED41D9AC6E8DC899C164262CB622033397D80238DD1D9EC39EEB857
            EC98A715F072BB5CBD8285C983B92D85CC96C54006080098CAE88E7BBA5F7FC9
            D41D9AD0955E47797DDBEBD2D49DA9C97A5EBB78EDEEB546EACE4C802D8B818E
            2200609426A515B7ABAD96BA3313BAC5C238B44E36675A7F2F41E7BA1D325B16
            031D430040B1E39E4EFA1BA7EECC8446D7B53FC586775299DFEBF916C2C04E5E
            0BA5EE50496C590C74000160984677DCDBDAC22CF45CB0B3DDD416F7DACEF29B
            A0C996C54022B97C48A03A4DDED38A7CB97D5B2CB0567D792B5A788FF7F4DA28
            75674A22D8012D2300F45FB1E39E56E65B3A75672674B5D7F1C6EA7355148B0D
            E97760F9D49D29892D8B81161000FAA99831DEC71DF71027D7659AD9B2186808
            01A03F74AB9E2EFBEA9B5E4EF78CCBE80CF113BDEE4BDDA19ECB75A742868180
            1A1100F296EBAA7132BAE3DE77BC6E4EDDA181CA71AB66B62C066A90C31F3B1E
            29D775E30BC58E7BCCFAEE9E62A7C25779AD95BA3325B16531108900908F5C77
            8E936B2DACBFAFCBB77F4CDD1994524C1E5520582675674A62CB62600204806E
            5BD9C284ADDCF68E977F7A9D64E1DB3E33B9F3357AC56947AF855377A824B62C
            06C62000748F76DC2B96E3CD654CB690CB8E7B8893E39C13B62C06A691D3C9A5
            CFD8710FB9C971A7426E3105461000D219BD2F5BE3AC8BA6EED0848A255C3583
            9F2D5F876D7DAF975AF85D5E3D75674A62CB620C1E01A07DC58E7B7B78AD9ABA
            3313D2AD7ABAB4CF262E984AAE3B15B26531068900D08E626D769DF49F94BA33
            131ABDCD6A883BEE21CEE84E855A6760C1D41D2A812D8B31280480E6E4BA3B9B
            8C4E9C62A1155495E3DF025B16A3F772F843CC49AEFBB317586A154D5BC9C2ED
            847B5A3E3B15B265317A8900508F62D1949CC63D0BC56428DD2F7D71EACE6050
            72DBA9902D8BD12B048078C58E7BBB7BAD91BA3313D2E54D8DEB733B14BA20C7
            9D0AD9B218D923004C26C77B9F0BFAC03AD5D8710FDDA63531B6B57055E00596
            C74E856C598C2C1100C6CB71F5B3C2E825CBA3BC6E4FDD21600239EE54C83C1A
            6423873FA814FAB2E3DE215EB3527706A8416E3B15B265313A8F00F048C5643E
            8DEDE7B6E35EB113DA215E7F4EDD19A041B9ED54C896C5E82402407EDF2C4615
            3BEEE992A3BE6D3C94BA43408B72DCA9902D8BD119430D00398E2D168AD5CA74
            899FDDCD80407B696C6F61826E2E7375D8B21849E574E2AB6A74C73D7D50E430
            BB7854B15EF9915EFF48DD19A0C31E6721E0E772B70E5B162389BE07801CEF2F
            1E75A1D7F72C7C305C96BA33408672DBA9902D8BD19ABE0680DC56181B759D85
            6F01BAC4CF1AE4403D72DCA9902D8BD1A83E05801CD7182F8CCE12665531A059
            C59E1DFA92F062AFF95277A804B62C46ED720F0039EE325660C73D20BDDC3E43
            D8B218B5E9FA2FFB5472DC677C5491E4B532DF8DA93B03E03F8AAB887B796D98
            BA3325B065312AC92500E4387E37EA4A0B27FC6F7B5D9ABA3300C62AE611EDE1
            B55CEACE94506C59AC2B0397A7EE0CF2D0F50090DB0CDE51B75898CCA7747EA6
            319B17C8516E7712B165314AEB6200E8CB8E7B8CCF01FD32BA31580E3B15B265
            3166D4950090E32A5E051237303CB9AD26CA96C5789494BFB439AEE33DAA58C6
            53757DEACE0048665D0BFB89BCDC6BCDD49D29812D8BF17F520480DC76F21A75
            B5D7F116D6EE3E27756700744E4E9F6F6C593C706D05809C77DC63694E0093CA
            ED0A275B160F50930120B731B251A38B6D9CE8755FEA0E01C8D66216561CCC65
            8E135B160F44DD27E5DC66C98E2A26F369A20CCB6D026842B153A16E2BDC2475
            674A60CBE21EAB2300E4769FEC9CF40BAE933E0B68006893161BD255017D615A
            2D7567C660CBE21EAA1200725B296BD4B55EC71A3BEE01486F74A553DD49B064
            EA0E8DC1BCA89E98340068AD6C2DC5ABB5B2D749DDF909FDD3EB240B277D16C5
            00D045B9ED54C896C5192B130096F0DAD6F2D92D6BD4E8652B7DE3BF2B758700
            A0A4DC3E7BD9B23833D3FD42E59642E754FC222A9932710540EE72BAFACA96C5
            999833002CE2B5AFD7DB2DDCBA92938B2D244F1593F900F4D553BC76F7DAC56B
            D9D49D19E31F16BE88E90BD9D9A93B83471A0D009AD4A7B1F19552776A02375A
            D866F73BC62F178061D17A025B5A9838A8BD54BABED890EEB82A8608AE4EDD19
            3C1C0036B4B024E4635377A8048DE36B395EFD12E932132B5601183A5DBDDDC1
            4218789E859508BB4A6BAE686ED6272DDC4580448A00F05AAF03537766069AB1
            AF93BD4EFA1A5362321F004C4DB7656BE9750D13747DB121ADB4AAB90DAC2B90
            40110074197D97D49D99C259164EFAEADF8DA93B03009959CFC25501D5AAA93B
            338D2367F70F2D5300D8C8C2ACF9B9527766364DE02B26F35D9CBA3300D003FA
            ACDFD4C289F6A5D6ADE1DE5F793D3B75278648BF145FF17A4BE27EDC6A61272A
            5696028066756DA7420240220A00977AAD99E0B9EFF13AD5D8710F005219DDA9
            706B4B3379900090880240AA6FDB4500D0D2BC6C2E0100ED23000C58CA00308A
            75FA01A01DC54AAF3AE9EFE4B550E2FE100012E94A001875B38575FBB560C499
            1DEC1F00E46674C7416DDBBE74EA0E8D200024D2C50030EA4A0BB7001EE27551
            EACE004066D6B730EB5FFBBAAC9EBA33D3200024D2F500304ACB486A88409306
            59EB1F00A6F638AF9D2D7CDBDF3475674A200024925300286819C9DF5A0803EC
            F607008F9CCCB795857D027241004824C700304AFB00684D69CD1738CEEBCED4
            1D02809674ED7EFE58048044720F00A3EEB6B08810EB0A00E833ADEFAF937ED7
            26F3C5220024D2A700308A950501F489D6F4D77E2DDAE0678DD49DA919012091
            BE068051D758181ED09C815FA7EE0C0094B4828531FD5C26F3C5220024524700
            D018FC66D69DCD846672BE8589832AEE2400D0358B7AED60E19BBEC6F753ACCC
            37A9F3BC96B2B00D710C0240227504003DC68A1676997A95D75AA90FAA24DD56
            A8218243BD6E48DD19008395E364BEEB2D5C552DAEACFED2EBBF221F8B009048
            5D01605431414509B64B5B4E4EA7B8AD5061408B0EDD9EBA430006A1F8ACDCD5
            6B99D49D294113AD35B74A775DCDB9643B0120434D0480C2025EDB5AF805CFE5
            BE54362802D0A4752D9CF05F66795C2D1DFD82A4A1D33BA6F9390240869A0C00
            A38A95A9F6F67A62EA832E890D8A00D461490B9BEEE8CB90D6E32FF399995A31
            44AABABEC4CF130032D4560018555CF652025E2AF50B50121B140198C4825EDB
            58F8AC7B81D7BCA93B54C2B5163EE70EF1FAF3846D0900194A11000AC59694DA
            A442B35E731822103628023095D1C97CFA4C5B2475874AD09C272D9C56F54A27
            0120432903C0A8E52DEC58B5A7D746895F9349B04111800D2C7C91D9D36BD9D4
            9D29617409757DE3BFAB86C7240064A82B0160D453BDF6B030512687BB084413
            65F44B7CA485C983B7A4EE108046AD6D611853B73FAF99BA33259DE5F51D0B57
            30EBDE448D0090A12E0680C2E810C1F696C7189A680F829F5AB8325057BA0690
            9EBE906832734E93F9AEF63ADEEB60AFBF34F83C04800C7539008C2AFEF05EE7
            B5710BCF5717EE2400F296E364BEE273A7CDBD50080019CA25008C2AC6DBF6B2
            3C16CF2814336CD99300E8364DE67B8685CF19EDB8F798D41D2A61745C3FC51A
            2604800CE518000AC58CDBD77ABDD86BBE44FD88C1E441A07B8A2F179A8314BB
            AE7DDBFE68E1A4AF457AEA1ED79F04012043390780514B58D8314B97E972DA35
            AB58654B61E008AF9B5277081898952D7CCBD715C5755277A6A4AB2C9CF0BFED
            7569EACECC4600C8505F02C0A8F52D04813D2D8F5B720AF77AFDCC58861868DA
            E817865C26F3DD6A611DFE36C7F5274100C8501F03406174510E4D205C307587
            26709BD7C9D6DD3F762037DA9B644BCBEBAEA2E24B813E07B458CF7DA93B3403
            024086FA1C00462D6E61A1A1DC8608E41AAFE32C6E794E60C8E6B2F00D3FA7C9
            7C528CEBE7342C4800C8D05002C0A8F5BC76B13044B04AEACE4CA8983C7888D7
            ACD49D013AAA98CCA7C0BF7CEACE94A465C58FB670E2BF2C75672210003234C4
            0050D01081EEEBD58CDFED2C5C22CC85260FEA961FADEAA5AB03B7A7EE1090D8
            EAF6F0CA7CEBA6EE4C499AB5AF55F9F4777C56EACE544400C8D09003C0A8C52C
            DC4AA86F0DCFCDEC98EEF13AD5C238E1095EF7A7EE10D0124DE6DBD6F2FABBED
            EBDF2B012043048047D3AD401A2FD495815553776642DA83407710E832228B0D
            A18F4627F3E5B2FE4771BBAF4EFAFAC6DFC72B7604800C1100A6373A81489715
            174EDDA1095DE8F53D63B121E46FF46F519B842D9ABA43251573760EF5BA2275
            671A4600C81001A09C2F78BD237527220DE1DB07FA4993F974BF7E4E57E3AEB7
            70D21FDA92DF04800C1100CAC939008CEAEBF823FA6325AF1D2D9CF49F94BA33
            25DD6D61911E0DBD0D75D32F0240860800E5F425008C62BE00BA42EB74E84E9C
            9C26F38D5E59D3B2BC77A4EE506204800C1100CAE963001855CC1718C25825BA
            617EAFE75B5E93F944E3FA87CDAEEB5377A643080019220094D3F7005060BE00
            9A544CE6D3B8BE26D62E99BA4325155B792B20FF2975673A8A00902102403955
            0380C6339F63616C3397E548B51991E609689112AD473EC4714DD46343AFDD2D
            CCE05F3175674A52F8D5225B1A223BDD4238C6F4080019220094533500ACEA75
            A5857B98B570899628DDCA6B9ED4075612F30530299DE877B2F0BBBE71EACE94
            F4A0851536F57BAE6FFC77A5EE504608001922009453570018A535CAB54191C6
            4037497D801360BE00A6333A994F57BCE64ADDA1928A71FD43BC6E4CDD994C11
            0032440028A7890030EA8916BE29692DF35C362FD125D1D32D7C70EA52E9D067
            410F9526F3BDC8C225FE17CEFEFF7330CBC26E7B1AE2BA2875677A8000902102
            40394D0780C2E88A670A038BA43EF092B4BEC0C9162E9D9E62AC2F3004BA6A55
            84D6A55277A6A47F7A9D6421B4FEDCAA7FF6E16104800C1100CA692B008CD264
            418DA1EA9BD51696CFE5D41B2CDC17AD30F0E7D49D41ADB4CB9E66EFEB7772D5
            D49D29E93E0B8BF3E8F7F18716C22AEA4700C81001A09C140160D40A166E9D52
            6D9AFAC59800F305F2F758AF9D2D7CDBD7D5A95CFEDEFF68E1A4AF30FAF7D49D
            19000240860800E5A40E00A3D6B73079501FC8ABA57D594A63D5B4BC8CEEB8B7
            BDD7BCA93B54D255167EBFBEED7569EACE0C0C012043048072BA14000AB92EAA
            C27C816ECA75C7BDDB2CFC3E31AE9F16012043048072BA180046E5B847BADC6C
            E17E6BD61748A7D8712FA72B4AF75A589C4A27FD132D8CF3232D0240860800E5
            743D008C5AC2C26243396DAC2243DA3B3DB55CE79414E3FABA7DEFA6D49DC123
            10003244002827A700306A65AFDDBCF6F65A3BC1F3C760BE403316F4DAC6F25B
            8552F7E81F6DE1C47F59EACE605A04800C1100CAC935008CD2A55E5D15D8D36B
            D9C47D298BF902D5CC6DE116529DF477B07CD695185D7AFA4C635C3F0704800C
            1100CAE94300288C9E14B439D1C2A93B5412F305CA2BC29E36A15A2E75674A52
            D83BD5C2951F6D4245D8CB0B012043048072FA14004669A6F73F537722C27916
            4E14475AD8AA15E177AC58A467DDD49D2949C33D67D8C39BEFB0FD74BE080019
            220094D3D70020395F5E1DFA7C81C52CDCF5C1844FA44600C81001A01C0240F7
            8DCE17D0D2AF0FA4EE5043468770B454F442A93B54D2F5164EFA2A8670FA8700
            90210240390480BCE864A32B02BA32F097D49DA981FEC6B4488F2EF1EF626179
            DE1CDCE575BC851DF734BEFF60EA0EA13104800C1100CA2100E42BE7CBCDAB58
            5895EF555E6BA5EE4C49431F96192A0240860800E51000A6A7895B392C1B9BCB
            84336DADAB93BEBEED3F3D756726708E3DBCF9CEF5A93B83D611003244002887
            00303D2D3093DBC631A3B79C756129D95C9772D61D180A53BABAF2A7D49D4152
            04800C1100CA21004C6FF4FDCF71EBD85B2D0C11B4BDE84CAE9B39DDEDF503EB
            FF644B4C860090210240390480E94DF7FE17E3D7AFF65A33F54196A4F7E8286B
            763BD9F52C4CE4D3B7FDD5531F70499ABC779A8593FE715E77A6EE103A870090
            210240390480E99579FF37B1705540FB122C9DFA804B2A369ED198F6DF2B3ED6
            F25E2FB5FC36DFD1044A0D93E812FF0DA93B834E2300648800500E01607A93BC
            FFF37B3DDFC2895043050BA63EF81246BFFD6ABCFBAE92ED72DD7CE71A0BDFF2
            0FB67EDC428976100032440028870030BDD8F77F71AFED2CAF55ECB46CF24916
            E60CFCC81E7D5F7B31AEAF63D2D58EC7A4EEF084C7A56FFB3FB7FEDF1A8AFA11
            0032440028870030BD3ADEFF352CAC61AFC970B9DCEF7E95857DE9B5C88DAE6C
            1427FD5C36DFD19D0F3F9EDD7F4DEABB27758790350240860800E51000A657F7
            FB5FEC64B797D732495E917EAB736E03502000648800500E01607A4DBDFFB96E
            5BDC45BA5AA113BEC6F52F49DD19F4120120430480720800D36BE3FD2F76BDD3
            E4C1AD2D8403CCEC360B9B2331AE8F36100032440028870030BDB6DFFF152DEC
            82B7A7D7462D3F77D7DDEBF533EBCE0A87180E0240860800E51000A697F2FD2F
            E60BEC61F94CBE6B4231AEAF498937A5EE0C06890090210240390480E975E1FD
            1FBDFDEE655E8BA4EE500B2EB6B06AA166F1FF2D7567307804800C1100CA2100
            4CAF6BEF7FAE0BF094718BD7F7ADFD7D0B80710800192200944300985E97DFFF
            152C4C1CCC6D09DE51A33B179EE0757FEA0E01532000648800500E01607AB9BC
            FF9A2FA020A02B03ABA5EECC180F79FDD6C2495F97F96F4FDD21600C02408608
            00E51000A697DBFBDFE5E57A2FF4FA9E8513FFE5A93B034C8000902102403904
            80E9E5FCFE2FE0B5A58530B0BDD7BC09FA70B3854D8634AEFFEBD42F08108900
            90210240390480E9F5E5FD7FAC851D0A3544D0F47C018DEB6B911E9DF44F31C6
            F5913F0240860800E574210068DC7A750BABE25DEB75BED79D351C1BEFFFA3AD
            67617322D5CA353DA6760ED48A7CBA6DEF78ABE7BD03BA82009021024039A902
            80C6ABB5C8CD1BBD9E3CC7BF695F7ADD12B69FD7AC0A7DE3FD9F9E5E7F7DA869
            63A23D221FE31AAF2F5A98CC775DEA03021A4200C81001A09C1401E0495EDFF0
            7AEA989FD30CF1D758983C1683F77FBCA52D7EE73C7DE37F45EA03001A4600C8
            1001A09C36038076BDFBA0D7BE567ED31B5D5ED6FAF82746F48DF77F3C6D4B7C
            63645B020086800090210240396D05806DBDBEE6B552C473E84AC0134B3ECF28
            DEFFF10800C0CC080019220094D3740058C3EBAB1696AEAD42B7916D6EE18A40
            59BCFFE32DEB7543645B020086800090210240394D0500DD77FE4E0B13F916A8
            A9AFFBCCEE6F59BCFFE369A7C1EB23DB1200300404800C1100CA6922006CEE75
            80855BCEEAA43DE19FE2756EC99FE7FD1F6F798B9FC14F00C010100032440028
            A7CE00A06F939FB1708F7953AFDD395E4FF3BAAFC4CFF2FE8FA74D85AE8D6C4B
            00C010100032440028A78E0070B58593BE1E6BC916FABCBFD7FB4BFC1CEFFF78
            8FB3703F7F0C020086800090210240395503C00E5EEFB5F0ADBC2DDA516E0B0B
            7F9833E1FD1F8F0000CC8C0090210240395503402A97796D64332F3BCBFB3FDE
            8A16AEE0C420006008080019220094936B009083BC5E37C3BFF3FE8FA77519AE
            8A6C4B00C01010003244002827E700205A60E807D3FC1BEFFF78DA1028763327
            02008680009021024039B90700AD63FF049B7A3D7BDEFFF156B1F80D97080018
            020240860800E5E41E00E4040B9311E7C4FB3FDEAA5E5744B625006008080019
            220094D3870020AFF43A7C8EFFC6FB3FDEAA460000664200C81001A09CBE0480
            7F7A6D688F1CCFE6FD1F6F35AFCB23DB1200300404800C1100CAE94B0010FDB1
            6D6E619D00E1FD1F6F750BB754C620006008080019220094D3A70060B38FE54B
            B3FF37EFFF78DAADF16F916D090018020240860800E5A40C00677BEDEBF51EAF
            AD6B7ACCD10D8378FFC75BD3EBD2C8B604000C010120430480725204002D3DFB
            31AF6F59B85CAFE56875C25EA2A6C7FFB3D7D32D84812A86F0FEAFE57549645B
            020086800090210240396D06002DDBFB79AF4F79DD33C7BFE94472588DCFF509
            2BB761D04C86F0FE13008099110032440028A78D0070BF85657BF7F3BA69869F
            3BD66BC79A9EF301AF792A3EC610DEFFB5BD2E8E6C4B00C010100032440028A7
            E9007092D7BBADDC4966690B4301CBA67E51661BC2FBBF8ED745916D09001802
            0240860800E57CD0EBA30D3CEE9FBCF6F13A7DC2765ADBFFA4C4AF496108EFFF
            BA5E1746B625006008080019220094B3BB3D7A05BD2AAEB51028BEEDF560E463
            1CECB557E2D74586F0FEAFE77541645B02008680009021024039CB59D80E76DE
            8A8F7397D757BD3E6E61B25F158B7AFDD5C24635290DE1FD5FDFEBFCC8B60400
            0C010120430480F28EF2DA25B2AD26DBE976BEFDBC6EACB14F5B789DEA3557C2
            D76508EF3F010098190120430480F27415E0CFB3FFEF247482D638FF5F1BEA97
            56F47B5BC2D76508EFFF065EE745B62500600808001922004C46BFA4DA56B7CC
            623CE778BDCB420068D282162613AE9BE83519C2FBFF780B775EC42000600808
            001922004C4E1BC36802DE66D3FCBB368DD1023B87DAC31BEE344DCBFAFEC6AA
            DFD31F6308EFFF132CFE0A0E0100434000C81001209EB6D5DDCEC24631F379CD
            F23AC3EB67D6DE897FD447BC3E94E07987F0FE130080991100324400E80F7DFB
            D75580A7B4FCBC4378FF15F6CE896C4B00C0101000324400E817DDAFFE470BF3
            02DA3284F79F0000CC8C0090210240FFE88E83CFB5F87C4378FF37B27007480C
            020086800090210240FF684D809F7B6DDED2F30DE1FD7F92853B2D6210003004
            04800C1100FA69550B93D61ED3C2730DE1FDDFD8C2D04A0C0200868000902102
            407FBDC6C2F6C24D1BC2FBBF89D7D9916D090018020240860800FD76B2D7360D
            3FC710DEFF277B9D15D9960080212000648800D06FCB5858C16E99069F6308EF
            3F010098190120430480FEDBC1EBB8061F7F08EFBFD656F843645B0200868000
            902102C0301CE9B55B438F3D84F7FFA95EBF8F6C4B00C01010003244001886C5
            2DDC15B052038F3D84F7FF695EBF8B6C4B00C0101000324400188E2DBD7E62F5
            BF5F4378FF9FEEF5DBC8B604000C01012043048061F9BAD7EB6B7ECC21BCFFCF
            B0B0CF420C0200868000902102C0B02C6C6149DBB56A7CCC21BCFF0400606604
            800C110086E79916FE58E7AEE9F186F0FEEB353B33B22D0100434000C8100160
            983EEDF5EE1A1E47BF3B73A53E98166CEAF5EBC8B604000C010120430480619A
            DFC27DED4FACF838F77BCD97FA605AF02C0B1F5231080018020240860800C3A5
            3DEE1502AA9CC02FF35A33F581B4401F6CBF8C6C4B00C010100032440018B6FF
            F6FA4485F6877BBD32F541B4800000CC8C00902102C0B0CD63E18FEFE991ED9F
            6DF197C673A2E33C23B22D0100434000C81001006B5BD8E866D109DB697F819D
            5277BE259B799D1ED996008021200064880000D9DCEB140B9303CB38DFC21FEC
            2DA93BDE92CDBD4E8B6C4B00C01010003244004041EBDD1F66E18AC04C7EE8B5
            87D7CDA93BDCA22DBC7E11D99600802120006488008051BA02B0A3D7AE5EEB7A
            2D3DFBBF3F68E13EF883BC7E9CBA930910008099110032440000C67BAED7A991
            6D090018020240860800C0780400606604800C110080F19EE7F5B3C8B604000C
            01012043040060BC2DBD7E1AD9960080212000648800008CF77CAF9F44B62500
            6008080019220000E3BDC0C23A0931080018020240860800C0785B59FCED8F04
            000C010120430400603C020030330240860800C0785B7BFD28B22D0100434000
            C810010018EF851696408E4100C010100032440000C67B91D70F22DB12003004
            04800C110080F1B6F13A39B22D0100434000C8100100186F5BAF9322DB120030
            0404800C110080F10800C0CC080019220000E36DE77562645B02008680009021
            020030DE8BBD4E886C4B00C010100032440000C6DBDEEBF8C8B604000C010120
            43040060BC1DBC8E8B6C4B00C010100032440000C6DBD1EBD8C8B604000C0101
            20430400603C020030330240860800C0783B797D3FB22D0100434000C8100100
            186F67AF6322DB1200300404800C110080F15EE2F5BDC8B604000C0101204304
            0060BC977A1D1DD9960080212000648800008CB78BD751916D09001802024086
            0800C0780400606604800C110080F176F5FA6E645B02008680009021020030DE
            6E5E4746B62500E46F15AFCDBC1EEFB581D76A5E8B7B2DE1B540EACEA157EEF4
            BAC3EB9F5E977A5DE475AED7695ED7D4FD64040060BC97791D11D9960090A727
            7AEDE9F522AFB5537706709758D895F430AFF3EA78400200301E016018E6B670
            C7C73E5E9BA4EE0C3083B3BD3E6B6181B287621F8400008CF7720B27F2180480
            3CE8C4FF31E3DB3EF272B1D7FB2C72B752020030DEEE5E8747B6250074DB9A5E
            5FF37A7EEA8E0015FCD8EB2D5E974DD28800008CA713F861916D0900DDA560F7
            75AF45527704A881260FBEC12618AE240000E3BDD2EBD0C8B60480EE99D7C2B7
            FED7A4EE08D08003BDDEECF5C0B81F240000E3EDE17548645B0240B72C64615F
            8717A5EE08D0A01F5858C0EC5F33FD100100188F00D00F3AF9FFC4EB59A93B02
            B4408B336DE575F7743F400000C6DBCBEBE0C8B604806ED065FF13BC5E98BA23
            408B74256047AFFBA7FA470200301E01207F1A177D6DEA4E000968A2EB1BA7FA
            07020030DEDE5EDF8E6C4B0048AFCA5E0E401F6822F3A36E65260000E3BDCAEB
            5B916D090069E93EFF73BC164EDD112021ED31F004AF59A3FF9100008CF76AAF
            6F46B62500A4F54363DC1F9053BCB61EFD0F0400603C02409EB4BCEFD1A93B01
            74882604FE67D9600200309E168C3928B22D01200D6DEC7381D5BBB6FFD55E27
            7BFDD4EB0AAF1BBDEE4B7DA0E8956567D733BDB6F37AAAD75C353EFEF91676BA
            FCBF0D840800C0789A3D7E60645B02401ABB791D59D363691BD60F58D879ADEA
            E725300905D88F7BED6CF59D6BB5409016C322000025BCCEEB1B916D09006968
            BBD4AA5BFAEAB3511FBE1FB512CBAA020DDADCC2497BE91A1EEB0F5E4FD3FF20
            0000E3BDDEC2BDB4310800EDD325CEBF547C8C7BBCF634E610A03B56B53004F5
            F81A1E4B8F713E0100184F3B6C1D10D99600D0BECF7BBDB3E263E83DFB4EEA03
            01E6B08285AB5BCB577C9CCF7ABD9B00008C4700C8CBC5566DF29F02C4BEA90F
            0298C6D3BDCEF09AAFC2636882EC06040060BC37797D35B22D01A05D2B7B5D59
            A1FDF516160FFA5785C7009AA6CFA337557C8C950900C07804807C68C9D3432B
            B4D79AE9B1F33D80B66808E06F1676B88CF50A020030DE9BBDFE27B22D01A05D
            9FF17A57645B7DEB5FD2C20440A0EB0EB36A9F2D9F260000E3BDC5EB2B916D09
            00EDAAB2F4EF495E2F4E7D0040495537B93A9900008CF756AF2F47B62500B44B
            939BD68B6CFB768B7F9F81B6694D80BF57687F1E010018EF6D5E5F8A6C4B0068
            9726F12D17D97627AFE3521F003081BBBD16886C7B1D0100188F00908F2A1F88
            9B79FD32F5010013D01D2F2B47B6BD9B00008CF70EAF2F44B62500B4ABCAE7D9
            93BDFE98FA0080095CE8B56E6C630200301E01201F04000C09010068989695FD
            7C645B0240BB080018120200D0B07DBC3E17D99600D02E020086840000344CEB
            C27F36B22D01A05D04000CC9455EEBC436260000E36965B9CF44B62500B48B00
            80212100000D7BB7D7A723DB1200DA4500C090100080861100F231940030AFD7
            E32D8CFFAE36BB1EEBB5A8D712B37FE67EAF3BBD6EB6B062DC7516C68CCFF7BA
            C2EBC1D40711612EAF4DBDB6F05AD16BF1D41DAAE02AAF5F5B58BEFAFEC8C720
            00000D7B8FD7A722DB1200DAD5D700308F8513DFD65ECFF67A92C52F7824B77B
            9D39BB4EE9F0718FD2716B4F8E0D5377A466D75A18668C59D79F000034ECBD5E
            9F8C6C4B0068579F02803E5BB53AE11E5E3B782DD6E0736945B9E3BDFED7EBAF
            A90F7C0A7B7B1D682108F5956E35DE77C236177BAD1DFB84040060BCF779ED1F
            D99600D0AE3E048045BC5E6D6113AAD5123CFFEFBD0EF03AD2EB81D42F867B8E
            D74FACDF27FF82DEF349B61E2700000DFB6FAF4F44B62500B42BE700F0180B97
            82DF6C0F8FE3A7A479021AFAD25581D831EAAAE6B6704562FDD42F464B3434A3
            13FA8D257F9E000034ECFD5E1F8F6C4B0068578E0140DF6C5FE3B59FD732099E
            7F1C8D336B39EC53123CF7F3BC7E96FA056899261D975D77840000348C00908F
            DC02C013BC0E9EFDDC5D77A2D7EBBD6E68F1397505E23DA90FBC65BFF07A6EC9
            9FBDC46BADD827220000E37DC0EB63916D0900EDCA2500E87636CD2DF990D77C
            2D3D671D6EF27AA3D7312D3D9FFE7E5E9EFAA05B76B9D71A257F96000034EC83
            5E1F8D6C4B0068570E0160490BBF175BB5F28A34E320AFB778DDD7F0F30C3100
            CCB2F2933F090040C3F42DED23916D0900EDEA7A00D8C0EB475E2BB7F68A34E7
            575E3B5B5864A829DA846B9FD407DAB25F5AB8FDB30C0200D0B00F5B98A01583
            00D0AE2E0780677A9D64E10A405FE872F5F3BD2E6BE8F1B7F13A39F541B64C43
            8E65EF3A2200000DDBCF4208884100685757038056F0D3423BF3B7FE8A34EF1A
            AF2D2DDC2D5037CD8FD0496E95D407D992BB2DCCEABFA6E4CF5FEAB566EC9311
            0080F1F63302402EBA180034A35BDF62174CF28AB443FB0C3CCBC2DA0175D330
            435B930E53D37CA349EE382200000DD3F8FF8722DB1200DAD5B500A0C73CDD6B
            E1542F488B7432520868624E80EEC2F940EA036C98565EDCDD26FB1D2600000D
            D31D001F8C6C4B0068579702C0F25E7FB0B06BDD50FCCE6B73AF7B1B78EC5779
            7DC6C2AE877D7297856FFDDA7174D2DF5F0200D0B02ADF3E0800EDEA4A00D058
            BF76DADBA4E5E3D7C9E45F16AE58E99EFDA52C4C3AD4D6C1DA4D70A516FAA04D
            7B5EDFD0636B8964DD16F8020BB7CAE53AAC728F85ED807F6EE133227671A5BF
            59F935031E8500008CA774FEFEC8B60480767525007CC1C2F2B94DD2A4BBD32C
            EC297FA185C972778D69A3AB119AB0A7DDF59ED560DF5EE97578C3C70F0200D0
            3802403EBA1000F4EDF4C7D6CC67A3C6D7BFED7584D7F9151F6B5DAFD779BDC1
            EABF3BE1360BCB1C979DCD8E380400A061BA27F7BF23DB1200DA953A0068B29F
            4ECC75DFB6A659F6FA3DD4CE7C77D7FCD8AB5B185BDFA9E6C7D516BE39AF7698
            030200D0B0FD2DACDB1E8300D0AED40140BBB8ED5BE3F13CE0F5450BF350EEA8
            F171A7A2DB15F5FBBA5C8D8FF912AFEF37DCEF212300000DFBA4D77B23DB1200
            DA9532006801177DFB9FA7A66399E5F532AFDFD6F47865ACE075B4D5373F40C7
            B09E85496FA89F56605C3DB631010018AFCA96A4048076A50C00DFF5DAB5A6E3
            38DD6B070B63E96D9BD7EB1B16260AD6E15D16D6F447FD080040C3747FEEBB23
            DB1200DA952A0068C2DB3916B6F9AD4AABDEE977A6897BE9CBD2711C6A61619A
            AA748B9B4E5275CF5D000100681C01201FA902C0215E7BD4D07F6D16A4A56FEF
            AFF76589A2A18CA3AC9EC9816FF6FA5AEA03EA210200D030CD907E57645B0240
            BB520480652C2CEA52F556BA2657D18BA58576CEB2B08D7115175B980B50F57C
            8347D26E8CABC536260000E35599D94D0068578A00A03B44F6AFD86FDDDFAF55
            03BB78DFFC865EBFB7EA01477BDCFF32F5C1F40C010068982630ED13D99600D0
            AE1401E05C0B4BED56B1BDD7894DBD28355000FE6CC5C7D09C823D531F48CF10
            0080867DDEEB9D916D0900ED6A3B00E8C47F6EC53EEB3EF99734F9A2D440F301
            B4DC70F4C633EE56AF65AD1BF31BFA82000034ACCABAEE048076B51D00B44BE4
            472B3CE77D5EEB58B85FBEEB34C9F1908A8FA17D084E4D7D203D4200001A4600
            C847DB01E00CAF6757784EDD6FFF86A65F949AE82AC0055E6B55780CAD6A187B
            350D8F7685D7AAB18D0900C078FAD07A7B645B0240BBDA0C008B78DD6261E19C
            D8BEEADBFFA5EDBC34B5D0DFC1172BB43FDBEB29A90FA247080040C3BEE4F5B6
            C8B6048076B51900B6F0FA4585E753DBE7B6F1A2D448DB09EB96C7D8CF7DED6D
            F058ABB6AF816E497C9E850D97164EFD8244FA97853B3EF43BF0E70A8F430000
            1AF665AFB746B62500B4ABCD00A050F8A50ACFF76A0B5BFBE646B7043EB5427B
            0D99FC2AA29D9E53C3719BA67E016AF6270B77199D1ED196000034EC2B5E6F89
            6C4B0068579B01405BF3EE59A19F2B795DDBCECB522B6D8DFD890AED5FEBF5CD
            09DBEC6561BEC47CA90FBE210F5A586C6CD2E195595661EB69020030DEFF5858
            CA340601A05D6D06002D6AF35F91CFA5C9745557D74BE5855E3FACD05EDFE227
            5957635BAF13AC9E7D16BAEE955E874FF0F3B38C0000348A00908F3603C02C8B
            FFF03DC2EAD968278555ACDA6D8BDAECE8A5257F56132D354972B9D407DD12CD
            8DD05A0B7F2FF9F3B38C000034EAAB5E6F8A6C4B0068575B01409F7BDAE33EF6
            92F47B2D6C3295231DFB3FBD1E13D95E574E362BF9B355E759E4E8235EFB95FC
            D9594600001AA55DCCDE18D99600D0AEB602C0425E775578AE492FF5768DBE95
            C7AE0AA81505D72FF9B3A759D8206948FE6A61FF85326619010068D40116BF58
            0B01A05D6D0580A5BCFE51E1B9B6F63AA5AD17A5013A89AF1BD97696955FBD4E
            97C2974E7DB02DD352C90B783D54E267AFF45A39F6890800C0785FF77A7D645B
            0240BBDA0A00BA1FFEEA0ACF95FB92B87FF17A62645BBD6E654F5A1A66A9BA0B
            618E16B5726B2510008086E9F6A3D745B62500B42B972B009A04774C5B2F4A03
            AA0480EBBC1E57F2671516564C7DB02DD322416517382200000D2300E4A3AD00
            A06FA5F754782EFD3E1DD4D68BD2809B2DACE817E3120B4B209771BC85AD9287
            44FB4B6C5EF267090040C30EB4B078490C0240BBDABC0DF05E8BBF0BE0FD5EFB
            B7F5A2D44CB3FF6FAFD0FE2C2BBF92E06E5E47A63EE096E996E3AF95FC592DCB
            BC52EC13110080F1F44DED35916D0900ED6A33005499A0F63DAF5DDA7A516AF6
            040B33D563FDD4EB05257F766E0B6BE53F21F541B7649685C995F796FC790200
            D0302D5BFAEAC8B6048076B51900FE60F13BDB4D3211AE6BF6B66A7B1828504F
            32A4B69ED76FBD164B7DE00DD390D2E616F65A282B7900D04A4D55EE8705BA8E
            00908F3603C06156EDBDD507F7356DBC28353BDACAAFE43795F7787D66C2364F
            B3301F60F9D407DF10CDA9D06B3AE9EE92C90380C6820EF1FA9C55BB2D06E82A
            7DDBD93BB22D01A05D6D0680AA9BE2E4B81BA02EC96BE8237602A0EC68E1643E
            A9252DCC9DD0C6408BA77E216A72A785CF08ADFE774344FBE401A0A0C50BB461
            C3E76DB24B1840D71100F2D16600D8C1EBB80ACF77A6D7B3DA78516AB4854DFE
            2D754E1AFAA8F265715E0B432F5A012F7639E2D474AB9F66F06B18A9EC78FF54
            2ADD2659670018A55F6CEDA1AE3F8E071B787CA04D075BF8D6118300D0AE3603
            C03216BEB5559907A5F1ED8B5A785DEA72A2D77615DA5FEFB542EA83E8914E06
            80C265167652FB96314F00F9AAB2EF3B01A05D6D0600A9B2208EE88BD2DB9B7E
            516AA2B5FF2FB66ADBF21EEBB573EA03E9914E0780822638683115EDAA1633CE
            01A44400C847DB01E08B56ED04AECBBF1B58F8B2D4755516C42AE438EFA1CB2A
            07007D335FA8A5CEEA97FDBB16FE68AADC470AB4E910AF3D22DB1200DAD57600
            D8CAEBC715FBFC7DAF9734F9A2D4400BF7FCC6C224C0587A6F74B2BA2EF5C1F4
            48E500708E95DF7AB04E9A27A0FDB07F60ED5C85006255B9DD8B00D0AEB603C0
            3C163E8497ABD8676D0EF4F3665F9A689A7477B6551BEA10DDCBFFCCD407D333
            BA8DB4ECBE0A8FA200F0290BF765A6A27DA5B5ECA1EEB5FE57C27E00D32100E4
            A3ED00205FF07A47C57E6B6874630B93E4BAE643166E53AB4A5B6A7F23F5C1F4
            4CE500A05B3234B16381C407A29DB50E985D7F4FDC1760D4E15EBB47B62500B4
            2B4500D8C8C272B555FDCAEB395E0F34F0BAC4D2843D2DFC5365E29F68953BCD
            FEBF35F501F54CE50020FB5858C8A70BF48B7284857902E7A7EE0C6004809CA4
            0800F26BAF4D6BE8BF6E39D5BE130FD5FCBAC47886856189056B782C4DFC8B5D
            4D13D3AB2500E8FF6A69C67D531FCD08FD216BD3082D2C74AA314F00E9E824FE
            F20A6D0900ED491500B6F6FA514DC7A0DF993D2DED1A2A5A7AF7648BDFEC6894
            C28CEE74C869BD835CD412000A3B590802ABA73EAA399C6BE18A80B685ACB26A
            12104357A45E16D99600D0AE54014034516E939A8E437706E8CE9314F3A27447
            C2A156CF377FD182703B25388E21A8350088C67A5EE4F55EEBDE8C4DCD0DF8BA
            85F5046E4ADD190C866E5DDD35B22D01A05D2903C0B65E27D5782C1758B8F274
            4E8D8F3913DDD1A0FD0DF6B3FA7679D512F1BA7B806FFFCDB8D62AACAC38EE4D
            569A7D9BD76E167E39BA425701B49FB66E23649E009A4600C847CA00203FF47A
            618DC7A3CF3A6D80F3150B27D3A6E892FF8156FF2DE1BAC3EBCD0DF67BE81A0D
            0085D52CAC00A5EAD22E4CFA63D72415FD71B09E009A7294D72E916D0900ED4A
            1D00D6F03ACFEABFABEA72AF8F5AF87DAA736E80FAFB2E0B130FABCEF49F93EE
            EC5ADFB85ADB242DAA14BD45F2A49779B4F3927645D33DAFABA43EF239684D6E
            DD42A87BB6EF49DD19F44A95FDCF0900ED4A1D00E483164ED64DD02DDB075998
            237055E463E844BFB9D75B2D0C5BD47DE22F28347FAFA1C746D06A002874799E
            C08D16169BD0264437A7EE0C7A411F62B14BB51200DAD58500A0E1D2D3ACD9AD
            7E759CBFB370E553730474D561BA40B0B0D7AA5E4FF77ABED773BD966CB06FD2
            E4F2C63A16AD9CA82570E76FF8389A729F8593B7AE605F5AE171920480515D9F
            27F049AF0B537706593BC6E277302300B4AB0B01407472D2E2404BB578ECB779
            DD62E1E4A23D5EB484AF6688377DB29F9336367AF2ECFED44993093F6B21C4F4
            89D690D05A3C7F88689B3C0014BA3A4F40F7A0FEC2C23C819353770659D2B799
            D8DB980800EDEA4A00104D06D4674E5397D8BB48C3AFBA2A5CC7CA88A3340957
            BB72A65EB1B6299AE0F9160B133127D199005058D46B2FAF775A5866B84BF44B
            F9250BB3BA9B9C518B7E2100E4A34B01405E6FE1D6E521D0972D9DA88FA9F971
            75B95F8B2C75E90A7313F4BBABB946DF9FA08DF68E88DE88AA89005028E609BC
            CFC292925DA28D3794B47455E096D49D41E71DEBB563645B0240BBBA1600E463
            5E1F48F372B4EAED5E5FAEF931B51891263EAE94FAE05AA26113DD9951F6BCD4
            D90030AAABF304EEB4B0BAA076F3BA387567D0595AC96C87C8B6048076753100
            E873567728BD3EC92BD20E2D20F4C9061EF78D16D6121812DD45F2F1923F9B45
            002874799E802E3129BD9E9ABA33E89CE3BDB68F6C4B006857170380E8B3F6C3
            B3AB4FF47A6B02DB171B7A7C7D1E3F37F541B64C43D51B97FCD9AC0240A1CBF3
            04FE642108E8CA4097B6E5443A2778BD38B22D01A05D5D0D00055D26D715C754
            9FBD75D29D56AFB5B0F64A53345CBB6CEA036D99EEE2D064C732BFCB955E9FD4
            BF845D9E27A064A505371406D8C37AD84EF4DA2EB22D01A05D5D0F00A2AB499A
            D1DEA5ABA093D2BE2C9A177366C3CFA390315FEA834D405F92EF28F173590780
            515D9D27A037417FACBAC4352B7567900401201F390400D1954F2D31DDB52F3E
            65689123FD4E5FDBC27355DAED2E53777B2D54F2677B13000ADA8A589795BA3A
            4FE053D67CEA45B76887B76D23DB1200DA954B00107DB3FD888531F4795B7CDE
            58BAC77F3F0B8BF13CD4D27356F9DBCB95CE2F655791EC5D002874799E803E24
            740B21F30486418BB96C13D99600D0AE9C0240616D0B5B9C6F99E0B9CBD2626A
            6FB2F6B7F57DA5D7A1A90FBE6593DC4ED9DB0050E8F23C812B2CAC27A0AA7BD9
            4B7487D65B7F51645B0240BB720C00A2CF620D7F7EC86B9D447D988AF619D01A
            063F4CF4FC1A0E3ED76BDDD42F444B34E4A1407877C99FD7DE37CBC43E590E01
            6054314FE0655E73A7EECC88629EC0E72D7E872E7457953DDE0900EDCA350014
            F48547ABC1BDDFEBF109FBF17BAFCF5958042BF536EB1B59582F7FE1C4FD689A
            56A7D53E07A74FD0665001A050CC13D0C21A8BA5EECC88629EC0FE5EBF4DDD19
            D446EFE9D6916D0900EDCA3D0014140436F3DAC3C232D48BB4F09CFFB4B0E895
            962E3E2BF50B3087675B08236D6EAED4A6DB2D7CB19DF44ACB20034021877902
            47783D98BA33A88400908FBE048051FAE6AB5B075F6061519C156A7C6CCDE4D7
            96B45AECEA140B13FDBA4A9BDE682125FD3D959D25DF75C5AEB55AFDEFCA88F6
            830E00050D07E812AD96A37C7AEACECCE1720B41E05B16B6E8447E7EECB55564
            5B0240BBFA1800E6B49ED77F79AD3FFB7F6B7C7CDC17204D56D6DA267FF3FACB
            ECD255CA1C9740D7C97FD3D9C79CEB1501ADF57FB58519FF65EEF79F8ED66358
            3AB6715F02C0A8AECE13D0259E432C8CAB5D9DBA339888BE19BD20B22D01A05D
            43080053D164B9C566D712B3FF7F9DF47572D19E279A2DDED6AD7B680F01601A
            9A27A020F02AEBD6E4114DF4D0D2B29A30F8FBD49D41293FB13039270601A05D
            430D00182602C0185D9E27A0CB3FBADF53136F9827D05D3FB5F87BB40900ED22
            00604808002569A52D4DA45110E8DA3C81CBBCFEC7EB9B5EFF4ADD193CCACFBC
            9E17D99600D02E02008684001041CB2CBED5C266165D9A27A0DB70B4EA9596DA
            BC267567F01F04807C10003024FFB00A1321871A000A5D9D27A0ED208FB63061
            F0AFA93B834A7B921300DA4500C09010006A50CC13D0A61C2BA5EECC1C344FE0
            D31696A34DBD22D750E93EE9E744B62500B48B0080212100D4A8CBF3042EF5FA
            9A314F20056D84B245645B0240BB08001812024043B40CA7828076819B2B7567
            4668D28796EA3C60F6FF46F30800795068AFB204370100B92100346C0D0B1306
            BB3A4FE0335EE7A5EE4CCF9D6E2110C6200034ABD82D547FA3B113350B0400E4
            E626AF25631B1300CA639EC0709D6E0480AED1E6385AED5357E9EADA3E970080
            DC10005AD6E579029758181A38C8CAEF278DF1CEB0B01B590C0240BDB421CCEB
            2C7CE35FA2E6C726002037048084BABA9E40314FE0AB167E4150CD2F2D6CBE12
            8300508F8DBDDEEEB59B8575EE9B4000406E08001DD0D57902C556939FF2BA20
            756732F62B0B612F0601205E9DE3FB651000909B9BBD1E1BDB980050AFAECE13
            D0BC00DDCBAE6D89992730B95F5BD87E34060160724D8CEF9751250028ACEC6C
            E10AC5532DECD1DED4950AE44DBB34EA2AEDD9162672AB62F78221007450314F
            4041E069A93B3307ED03AE79028779DD93BA3399D024CB6746B6250094578CEF
            BFC52A7CA855101B00B4A2E83116862980499DEBB58BD785116D09001DD7D579
            02377A7DC3C2264437A7EE4CC711009A558CEFEF6A213CA7121300D6B6F0FB11
            7D2F3660611F18AD35F2E709DB110032D1D57902BA0AA06F2F9FB4B8043A04BF
            F17A46645B02C0D4DA1EDF2F63D200A0B0728ED7FAA93B8E5EB8CAEBF15E774C
            D0E616AB70370C01A07D8B79ED69DD9B27F090D78FBCBE6C61F31B3C4CABCBC5
            DEF2490078A454E3FB654C1A00345CF18DD49D46AF7CC46BBF097E9E0090A9F9
            BC5E6CDD9C27A0CB505FF2FAAED7FDA93BD301BFB3F8F7880010A41EDF2F63D2
            0050656808988AAE02AC6AE5276A13007AA0ABF3046EF03AD0C2DD03B7A4EE4C
            42BFB730B33BC6D003C093BCDE61E9C7F7CB982400E858B4D85697FE5ED10F6B
            7A5D56F26709003DD2D57902777A1DE9F505AF8B537726813F783D25B2ED1003
            4017C7F7CB9824002CE7757DEA0EA397B4ECF82F4BFE2C01A0879827D02D0480
            728AF17D7DE35F377567224C1200348CC1DD336882AE369E55F2676FF55A3CF6
            890800DDD6E579027FB210047465E081D49D6998FE189F1CD976080140DF865F
            6FDD1EDF2F639200A0AB1CFAF6B558EA4EA357F4256B592BBF843B016020BA3A
            4F409741B5F990C2C0ADA93BD310ADD8B54964DB3E07809CC6F7CB987412A096
            D97E49EA4EA35734B1749265C7090003A35BA7B468CA2BBD164ADD9911B77B7D
            CBC284C12B5377A666048087E99BEF76166EE38BDD20A909DAF7428BA92C53E1
            31260D001A16D204513E475117FD6D9D3CC1CF130006AA9827B0AFD78AA93B33
            A29827A00D88CE4CDD999A68B8E349916DFB1200BA3ABEFF0FAF832DAC68A9DF
            B9DD2B3C56CC4A805FF37A63EA1701BD709485BD2426719B5518862200E4AF98
            27A020107BAB5A53F461AA2B02B9CF13D0BA081B45B6CD3D0074757CFF6F16B6
            BBFEA6D7BF66FFB7C3ADFD0030EFECE7DD25F50B82ACE95BBF7E87EE9EB01D01
            00FFD1D579025758584F40755BEACE44D072AF1B46B6CD350074757C5F57953E
            6D53EF6A992200883E475FEDF561AFC7A57E819015CDA1FAB8D7D72D6E975602
            001E450B49E81B9B3E94BA364FE010AFCF5B58F12A174309005DBD7FFF3E0B5B
            A67ECEEBAF33FC5CAA0050D0F6BFDA3342E16969EB567042776875550D5DE973
            45FB8C54B93A4A00C0B4BA3E4F607F0BEBEC779DB6507E6264DB1C02C0025E2F
            F57AAFD77AA93B334293FA0EF5FAACD735257E3E750000DA4600C05839CC1338
            C2EBC1D49D9986BE753E21B26D97034031BEFF66AF25537766C454E3FB651000
            30340AC98BC63626000C4F57E7095C6E2108E856C2BB5277660EE75AD8A63346
            1703802634BEC1C2ADA40BA4EECC088DEF6B3D89E32C2E0C12003034040044E9
            FA3C018DF75E9DBA33B39DE7B54164DBAE04008DEF3FC7EB6D5EDBA4EECC088D
            EF9F68E1FDFE43C5C7220060680800A8A4ABF3043451E6040B13067F9FB82FE7
            7BAD1FD9367500E8CBF87E1904000C0D0100B5E8F23C81AA9786ABCA3100747D
            7CBF89A11E02008646574C1F13DB980080A974759E40ECE4B0AA2EB0F86FCF6D
            0780BE8EEF974100C0D01000D098AECE1368E2F2F14C2EB4F8E56FDB0800A3E3
            FBBA8FBF2B7FD7C5F87E5BC33804000C0D01008DEBEA3C816281180581731B7C
            9E8B2C6CC214A3C90030BF85E543BB3ABEDFF6444E020086860080D614F304DE
            656127B42E996989D8AA2EF65A3BB26D130140FB85EB327FD7C6F72FB3B0294F
            AA5B390900181A020092E8EA3C814B2DECD056E73C814BBCD68A6C5B6700D072
            C4DA796E88E3FB65100030347758D8A9330A01005575759E40B14DAC1617BAAE
            E263A50C00FA1B7DAE756F7CBF4BB769160800181A02003A6129AF575908035D
            DA11ED5EAFEF797DC6C2823E31745561CDC8B6B101A018DF7F8FC5DF82D8842E
            2ED454200060680800E814CD13D016B2FB58FC063A4D899D27A0DB0FD7887CCE
            49034031BEFF260BA1AA2B528FEF974100C0D01000D0599A27A06FB05DBA742D
            BAA47F80D7415E7797F8799DFC568F7CAEB20180F1FDEA0800189A3BBD168E6D
            DCA50F65F45757E709FCDDEBEB161617BA69869FD34645AB453EC74C01A0EBE3
            FB5FF0FA5DEACE4C800080A12100201B4B7BED6DDD9D27F0290BABFECDE90AAF
            55231F7BAA00C0F87E335206000D7DEDE1F5120BAB31EAF6CCB952BF20E8A487
            BC6EF63AC7C295B5FFB5F01914830080EC14F304B4B0D01352776684E605FCDC
            C29D03A3F304EA0A005D1DDFEFF256CC9348150074C2FFBEC5CF13C1B0CDB2F0
            791873370D010059EBEA3C81BF589827709885950057897C1C05007DA3D6F8BE
            82C082A90F6C844E763AF11F61DD1FDF2F234500D8C4EB0CABF0210C58B802B0
            95D7E913B62300A0177429FCED164E925D9A04A7350416B7F8B90BFA46DDA593
            83C6F78FB130BEDFB7F1EEB60380DE57ED13B152EA03472F6858404B7AFF6382
            360400F44A57E709E4AE18DFD7C23D57A5EE4C43DA0E00EFB6705B2950972F7A
            BD73829FD7178CE889D50400745557E709E446E3FBBADDF140AFDB5277A6616D
            07004DE2DA30F541A3577467D20A567E488E0080DEEBEA3C812E2BC6F78FF47A
            2075675AD26600D03095F69AE0F71175D330C045257F960080C1D07AFCDA01AF
            6BEB0974856E2FFA91D7FE5EBF4DDD9904DA0C00CB5BF53D2680A96C61E52703
            2A84464F2C26002047CC1378A4218CEF97D1660058CCFA3FA4823436F6FA73C9
            9F250060B0863E4F40EB131C68C318DF2FA3CD00A0CFCE1BBC96497DD0E815DD
            A5A335426E2FF9F30400C086354F6088E3FB65B43D0950DB4DEF95FAA0D12B3F
            B1B01E4059040060445FE70914E3FB9FF4FA4DEACE7454DB016003AFBF1A4BFE
            A23ECFF13A6D829F27000053E8CB3C016DF7A9B5C2B570CF95A93BD371295602
            DCCFEBC3A90F1CBDA0EDB6DF3A611BED661ABD701A01007D97EB3C01C6F72797
            2200E8DBFF972C044D209686935E67930FE911008092729827C0F87EBC94BB01
            EE68E1F6CB7552BF08C8CA655E1FF03A2AB23D01009850314FE035D68DCD798A
            F17D6D477C66EACE642C6500107D9EEA16AEA7792D67E1EA1330A7FBBCAEF73A
            CBC2EFDBBF2B3C1601008854CC13D0B8DB0A099E9FF1FD7AA50E0040DBEEF19A
            3FB631010078789EC0BBBC1EDFC2F3CDF2FA868535FA6F4D7DF03D4200C0D010
            00801A35394F80F1FD66110030340400A0016B7BBDC9AACF13607CBF3D04000C
            0D01006890967AD56A6F93CE13D0F8FE772DACCF7F49EA831808020086860000
            B4407F64BBD8F879029ADDABB1FD2F1BE3FB6D23006068EEB50A779B100080C9
            E86FE6795E1B5AB8FDE666AFC7CEFEB7F3BC7E688CEFA74200C0D0700500008C
            0080E1E10A0000180100C34300000023006078B4AAE0BCB18D090000FA820080
            A1210000801100303C04000030020086870000004600C0F0100000C0BA1100B4
            36C49A5ECB1A9FAF989AB6FFBDD1EB6F16EEE3AFE27EAF79621BF30B0AA02F52
            0680F5BC3EE8B5ADD722A95F0864E14EAF93BC3EE67551E463100000C0D20580
            77787DC62A7C1063D0B472E83E16760A9D140100002C4D00D0D6D19F4A7DE0E8
            85777B7D76C236040000B0F603C033BC7EED3557EA03472F3CE8F54CAF3F4CD0
            46570FE68E7D42020080BE683B00FCC26B8BD4078D5E39D56BCB097E9E000000
            D66E0058C1EB1AE33314F57AC86B450BDB8A97410000006B3700ECE8756CEA03
            462FEDE07542C99F25000080B51B00DEE07540EA03462FBDD1EBEB257F960000
            00D66E007885D761A90F18BDA4DFE1234AFEAC260E464F42250000E88B3603C0
            D3BC7E97FA80D14B4FF53AABE4CF120000C0DA0D00FAD0BDD66BB9D4078D5ED1
            E43F4D027CA8E4CF130000C0DABF0D50ABB77D2EF541A357B4AAE49726F87902
            000058FB01607EAF5F5AB8640B54A521A5CD2CECF05796AE14449FC7090000FA
            22C552C0CB7B9DE2F5C4D4078FACFDC56B2BAF1B266C470000004BB7199076FF
            DBDFEB755EF3A57E1190157DDBD72D7FEFF7BA2BA23D0100002CED76C0A2D501
            5FECB589852B0384014C45277D4DF63BDBC276C0D755782C02000058FA0000B4
            8D0000004600C0F0FCBB4A63020080BE200060680800006004000C0F0100008C
            0080E1210000801100303C04000070DFF6DABB42FB2DBC4E4F7D1040498B79DD
            56A1FDBD0400007DF165AFB75668FF32AFEFA63E08A0A4F5BC2EA8D0FE260200
            80BEF898D7072AB4D76A6CFBA73E08A0242D1DFCE30AED2F270000E88BD7781D
            54A1FDAFBC9E9DFA208092B46BE0DB2AB43F8D0000A02F74F23EA3427B6DADBA
            9CD74DA90F0428E172AFD52AB43F900000A02F96F1BAB1E2637CC2AA0D23006D
            D8DEEBF88A8FF10E0200803EB9C86B9D0AEDB523DB9A36F9B6AC405BE6F6FAAB
            D7FA151F67130200803EF986856D79ABF881855DFD1E4A7D30C014AA4E76955B
            BD96260000E8933A2E8DCAA7BCDE97FA608039BCD4EB28ABBE86CFD15EBB1200
            00F4C97C16F6575FB286C7FA8AD73B2D4C0E0452DBCDC262570BD6F058DB799D
            4C0000D0370778BDA1A6C7FA91D76BBDAE4D7D5018ACC7787DDCAA2D72354A77
            B93CCEEB3E020080BED10A69E779CD55D3E3DD6DE16A80561ABC3EF5C16130B4
            D4EF2BBC3E68E10E97BA680EC187F43F080000FAE858AF1D6B7E4C6DBC72B6D7
            4FBC6659B853E0DED4078ADED0ECFE652D7C3BDF7C76CD57F373E82E9755BC6E
            D6FF430000D0471B593859CF9DBA2340873C62722B0100405F7DCDEB8DA93B01
            74C4351686C7EE2CFE030100405F2DE175A185CBAAC0D0BDC4EBFBA3FF810000
            A0CF9EE3F533AB6F422090A343BCF69AF33F120000F4DD27BDDE9BBA13402297
            783DD9EB8E39FF810000A0EF341150ABA7ED9CBA2340CBFEE1F55F5E174FF58F
            04000043A0DBA9B4C6FF96A93B02B4E476AF2DBCFE34DD0F1000000C8556543B
            CEEB79A93B02344CABFD6DEBF5BB997E88000060487425E060AF97A7EE08D090
            2BBCB6B6692EFB8F220000181A7DEE695DF54F7BCD9FBA33408D4EF2DADB66AF
            F4370E0100C0506DEC75A8D7E3537704A8488BFB68853F2D7EF5EFB28D080000
            866C1E0BDF98F6B77AB61006DAA493BD16F7D9D7EBAA491B130000209CFCB56C
            F05BBC964EDD19608C07BD8EB1308C754EEC83100000E0610B59582F60570BB7
            0CCE93BA43C0880B2CAC6971B8851D292B210000C0D496F2DACCEBD95ECFF05A
            CB6BF1D49DC260DC676146BFEEE3FF95D7E916F6B6A80D010000CAD350C14A16
            6E275C347567D03BF778DD6DE13E7EEDDEF760934F460000006080080000000C
            100100008001220000003040040000000688000000C000110000001820020000
            0003440000006080080000000C10010000800122000000304004000000068800
            0000C000FD7F4A2595637992F1D20000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 26.456710000000000000
          Width = 570.709030000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            'PT. KELOMPOK 6 SEMAKIN DIDEPAN.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 86.929190000000000000
          Width = 238.110390000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'LAPORAN STOK BARANG')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 128.504020000000000000
          Width = 1179.212896220000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 241.889920000000000000
        Width = 1171.654300000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779529999999990000
          Width = 37.086580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 3.779529999999990000
          Width = 454.380828110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                                              DATA BARANG')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 491.467408110000000000
          Top = 3.779529999999990000
          Width = 359.892578110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                             RINCIAN BARANG')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 851.231478110000000000
          Top = 3.779529999999990000
          Width = 155.797958110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                HARGA')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 1007.029436220000000000
          Top = 3.779529999999990000
          Width = 163.357018110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '            JUMLAH STOK')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Height = 102.047310000000000000
        ParentFont = False
        Top = 325.039580000000000000
        Width = 1171.654300000000000000
        DataSet = FRDB_DATASTOK
        DataSetName = 'FR_STOK'
        RowCount = 0
        object Memo8: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 37.086580000000000000
          Height = 102.047310000000000000
          DataSet = FRDB_DATASTOK
          DataSetName = 'FR_STOK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ''
            '    '
            ''
            ' [Line#] ')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'ID STOK')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 139.133890000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Width = 695.433520000000000000
          Height = 18.897650000000000000
          DataField = 'id_stok'
          DataSet = FRDB_DATASTOK
          DataSetName = 'FR_STOK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_STOK."id_stok"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 22.677180000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ID BARANG')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 139.133890000000000000
          Top = 22.677180000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Top = 18.897650000000000000
          Width = 332.598640000000000000
          Height = 26.456710000000000000
          DataField = 'id_barang'
          DataSet = FRDB_DATASTOK
          DataSetName = 'FR_STOK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[FR_STOK."id_barang"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 45.354360000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nama Barang')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Top = 45.354360000000000000
          Width = 332.598640000000000000
          Height = 15.118120000000000000
          DataField = 'nama'
          DataSet = FRDB_DATASTOK
          DataSetName = 'FR_STOK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[FR_STOK."nama"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 139.133890000000000000
          Top = 45.354360000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 64.252010000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Jenis Barang')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Top = 60.472480000000000000
          Width = 332.598640000000000000
          Height = 22.677180000000000000
          DataField = 'jenis_barang'
          DataSet = FRDB_DATASTOK
          DataSetName = 'FR_STOK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[FR_STOK."jenis_barang"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 139.133890000000000000
          Top = 64.252010000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 139.133890000000000000
          Top = 83.149660000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 83.149660000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Brand')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Top = 83.149660000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          DataField = 'brand'
          DataSet = FRDB_DATASTOK
          DataSetName = 'FR_STOK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[FR_STOK."brand"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 490.630180000000000000
          Top = 30.236240000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '             ISI')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 592.677490000000000000
          Top = 30.236240000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 611.575140000000000000
          Top = 30.236240000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'isi'
          DataSet = FRDB_DATASTOK
          DataSetName = 'FR_STOK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_STOK."isi"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 490.630180000000000000
          Top = 56.692950000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '         SATUAN')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 592.677490000000000000
          Top = 56.692950000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 611.575140000000000000
          Top = 56.692950000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'satuan'
          DataSet = FRDB_DATASTOK
          DataSetName = 'FR_STOK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_STOK."satuan"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 490.630180000000000000
          Top = 83.149660000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = FRDB_DATASTOK
          DataSetName = 'FR_STOK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '         VARIANT')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 592.677490000000000000
          Top = 83.149660000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 607.795610000000000000
          Top = 83.149660000000000000
          Width = 563.149970000000000000
          Height = 18.897650000000000000
          DataField = 'variant'
          DataSet = FRDB_DATASTOK
          DataSetName = 'FR_STOK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_STOK."variant"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 853.465060000000000000
          Width = 154.960730000000000000
          Height = 102.047310000000000000
          DataSet = FRDB_DATASTOK
          DataSetName = 'FR_STOK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8W = (
            '              '
            '           '
            '  '
            '         Rp. [FR_STOK."harga"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 1008.425790000000000000
          Width = 162.519790000000000000
          Height = 102.047310000000000000
          DataSet = FRDB_DATASTOK
          DataSetName = 'FR_STOK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            ''
            ''
            ''
            '                    [FR_STOK."jumlah_stok"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 64.252010000000000000
        ParentFont = False
        Top = 487.559370000000000000
        Width = 1171.654300000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1171.654300000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Top = 19.897650000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 1065.827460000000000000
          Top = 27.456710000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 30.236240000000100000
          Width = 192.756030000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CUKUP SEKIAN')
          ParentFont = False
        end
      end
    end
  end
  object FRDB_DATAPEMBELIAN: TfrxDBDataset
    UserName = 'FR_PEMBELIAN'
    CloseDataSource = False
    DataSource = DataSourceDETAILPEMBELIAN
    BCDToCurrency = False
    Left = 744
    Top = 272
  end
  object FR_PEMBELIAN: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45284.749225497700000000
    ReportOptions.LastChange = 45285.668311296300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 632
    Top = 272
    Datasets = <
      item
        DataSet = FRDB_DATAPEMBELIAN
        DataSetName = 'FR_PEMBELIAN'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftBottom]
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Height = 166.299320000000000000
        ParentFont = False
        Top = 287.244280000000000000
        Width = 1171.654300000000000000
        DataSet = FRDB_DATAPEMBELIAN
        DataSetName = 'FR_PEMBELIAN'
        RowCount = 0
        object Memo8: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 37.086580000000000000
          Height = 154.960730000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ''
            '    '
            ''
            ' [Line#] ')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '    NO. FAKTUR')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 176.929190000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'no_faktur_pembelian'
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[FR_PEMBELIAN."no_faktur_pembelian"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 22.677180000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '    Tanggal')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Top = 22.677180000000000000
          Width = 18.897650000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 176.929190000000000000
          Top = 18.897650000000000000
          Width = 222.992270000000000000
          Height = 26.456710000000000000
          DataField = 'tanggal_pembelian'
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[FR_PEMBELIAN."tanggal_pembelian"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 45.354360000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '   ID SUPPLIER')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 176.929190000000000000
          Top = 45.354360000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'id_supplier'
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[FR_PEMBELIAN."id_supplier"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Top = 45.354360000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 64.252010000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '   Nama Supplier')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 176.929190000000000000
          Top = 64.252010000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'nama_1'
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[FR_PEMBELIAN."nama_1"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Top = 64.252010000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Top = 83.149660000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 83.149660000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '   Alamat')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 176.929190000000000000
          Top = 83.149660000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[FR_PEMBELIAN."alamat"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '   ID DETAIL')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'id_detail_barang_1'
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          Memo.UTF8W = (
            '[FR_PEMBELIAN."id_detail_barang_1"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Top = 22.677180000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '   Kode Barang')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Top = 22.677180000000000000
          Width = 18.897650000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Top = 18.897650000000000000
          Width = 238.110390000000000000
          Height = 26.456710000000000000
          DataField = 'id_barang'
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[FR_PEMBELIAN."id_barang"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Top = 79.370130000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '     Brand')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 758.976810000000000000
          Width = 136.063080000000000000
          Height = 154.960730000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ''
            ''
            ''
            ''
            ''
            '         Rp. [FR_PEMBELIAN."harga_beli"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Top = 102.047310000000000000
          Width = 18.897650000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 102.047310000000000000
          Width = 120.944960000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '   No. Tlpn')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 176.929190000000000000
          Top = 102.047310000000000000
          Width = 222.992270000000000000
          Height = 52.913420000000000000
          DataField = 'no_tlpn'
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_PEMBELIAN."no_tlpn"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Top = 79.370130000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Top = 45.354360000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '   Nama Barang')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Top = 45.354360000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Top = 45.354360000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          DataField = 'nama'
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[FR_PEMBELIAN."nama"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Top = 60.472480000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '   Jenis Barang')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Top = 60.472480000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Top = 60.472480000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'jenis_barang'
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[FR_PEMBELIAN."jenis_barang"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Top = 79.370130000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'brand'
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PEMBELIAN."brand"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Top = 98.267780000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '     Isi')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Top = 98.267780000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Top = 98.267780000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'isi'
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PEMBELIAN."isi"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Top = 117.165430000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '     Satuan')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Top = 117.165430000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Top = 117.165430000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'satuan'
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PEMBELIAN."satuan"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Top = 136.063080000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '     Variant')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Top = 136.063080000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Top = 136.063080000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'variant'
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[FR_PEMBELIAN."variant"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 895.039890000000000000
          Width = 136.063080000000000000
          Height = 154.960730000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ''
            ''
            ''
            ''
            ''
            '                 [FR_PEMBELIAN."jumlah_barang"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 1031.102970000000000000
          Width = 143.622140000000000000
          Height = 154.960730000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ''
            ''
            ''
            ''
            ''
            '             Rp. [FR_PEMBELIAN."total_harga"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 162.519790000000000000
        Top = 18.897650000000000000
        Width = 1171.654300000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1171.654300000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 30.236240000000000000
          Width = 124.724490000000000000
          Height = 113.385900000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000020000
            0002000806000000F478D4FA0000000473424954080808087C08648800000009
            7048597300000EC400000EC401952B0E1B0000001974455874536F6674776172
            65007777772E696E6B73636170652E6F72679BEE3C1A000082184944415478DA
            EC9D07B86445F1B7EBAFE48C4A94B008A2444140514912541405153060C00018
            51318019232AA0A2181003282A2A208AE4B4928328822002C21214C951B27E5F
            BFF439EE70F786997BAABBCF99F9BDCF53CFDC5DD89E3E73CF9CAEAEAEFAD5FF
            9910FE2CD4638B065BB8E7CF8B547FD7FBFF2C5EBDCE5DFD7BFEFFB97AC61BFB
            67C678E2247FBE27D87F7AFE7C77B0FFF6F9E73B83DDD763FCB77B7BFE7C4FF5
            77BDFFCF9DA53F7021841894FF2B3D01D17AE60FF694604B075BB2FA79C9EACF
            FCBC44B0A5AAD77A311F456A67E0F660B706FB57F58ADD12ECE69E3FF3F3DDA5
            272C84186DE4008C2E2CEC3382AD58D97236FE22BF50E9890E290FD99CCEC16D
            C16E08765DB0EBABD7DB4A4F5408319CC801185E58E09709F6B41E5BB6E7EF66
            047B42E9498A29C151F847B06B2ABB29D83F7BFE8C93F09F698F2E841859E400
            7417166F76EE4F0FB66A65332A5BC1E239BB187E1EB6D9D102ECEA605706BBAA
            7A7DB0F4048510ED440E40FB5930D86AC1D60CF60C9BBDD8B3F0CF5B7A72A2D5
            90D88873503B035704FB6BB04B2D1E3D082146183900ED810CF8D52B5B2BD81A
            95AD640AD50B7FC82DC011B82CD85F7A5EEF2A3D3121441EE4009481C43A76F3
            2CF0EB55F66C8BE7F64294841C838B7A0CC7E09AD2931242F82307203DF3595C
            DC9F13ECB9D5CFAB9876F5A23B50A5F0A76017063B3FD80516AB1684101D460E
            803FECECEBC51E7B96CD16B8116258202A70BECD7608FE68B1624108D111E400
            3403F5B967067B41B02D836D665110478851E3D1607F0E7676B0B3829D1AEC8E
            D29312424C8C1C80C16027BF61B01706DB28D8F34C4239428C07DA0424199E51
            D9E926874088562107606A10CDD9B2B21799EAEB85980E942492475047084EB0
            D8634108510839007342087FEB602F09B68545495C21842F08149D13ECA460C7
            5A2C41144264440E408472BC6D6CF639FE5C8D4613420C0A95063803C798A203
            426461541D0014F4D8DDBF2AD84B2DEAE30B21DAC1031673067E13EC68936AA1
            1049182507807AFCAD82ED10EC15A6B37C21BA00B903E706FB55B02383DD587A
            42420C0BC3EE00B0E813DA7F8DC573FD054B4F6844A01EFCAE1E239C7B8FC59D
            DDBFAB9F3903BEAFFA6F0FDAEC902F7FF788C52CF27BAABFE3DF3C3CCEFBDC63
            9377C25BD8C63FCE59CCE2BD4F24688109FE6E118BF7CF42637E66CC05ABFFBF
            B6854B7FE023C2FFB3A83B7044B0C32D764914424C9361740050D8A34C6F278B
            217EEDF49B71B7C5F3D9DB7AEC569BDDBF1EA3BCAB77C17FA0F4A433831E44AF
            43B078B0A78C634B057B72F5F392D5BF13D383C8C0CC6087053BCAE27D2A8418
            8061720050DC7B53B0D75AEC7B2F2607E1961B82CDB21856ADFBCC8F7D1DB5C5
            3C172CFE3801DCABCB54B66CCF2BAD9E6904A5E8C2D41041FA9D4567E0388B11
            2421C41474DD01A0790E21FE5D2D66F08BC773A745C9D6F18C36B18F969EA098
            12A2096851D4CEC1D37A0CD96909513D9E7F053B34D8F7835D5D7A3242B499AE
            3A0068EDEF6271B73FCA0F40763AF479BFDCE2A27EADC51D3DAFD799B4D94701
            1C831916A3052B553FD79D26172F3DB982902F4025C1C1C17E6DFA2E0831075D
            7200E6B1B8E0BFCF6247BD518285FE2A8BAD592FAF5E2FABFE4EE14E31113807
            AB5B74066AE3CF8B959E5866C857F95EB06F593CDA124258371C0094F9DE1AEC
            3DC1962B3D99C4109227345F2FF2BDAF3A8B175E1019A89D81FA951C9A616F64
            452509DA025FB3585A28C448D36607802E7B1F0EF67A8B2558C30621CABF596C
            A57A61F54A3735852A45293842784E8F11695BA0D188ED857E04FB05FBADC5EF
            A21023471B1D0076247B5A5CF887A94C8AD0E3453D860EFAEDA52725C424D4ED
            AED7EBB10D2C1EC70D0BF420D837D84F6D724D0921868E363900EC363E116CBB
            96CD6B3A2066F3078BA2251754260533310C2082543B02CFAD6C85D29372E0AF
            C1BE18ECE72647408C086D586857B3F8C5DBB625F3990E28D29D69B37B9FB3F8
            ABC44E8C0A68166C5AD926C156293DA1065055C34604B5411D0D88A1A6E4824B
            86F2DEC1DE62DDEBBE77BFC585FEE460BF0F76B169D72044CD532D3A0334DCA2
            FFC6F2A527340D88DA7DC4E2F75B88A1A4840380AE3A5FAC0F5877128C901D65
            913FB932128894AC27447F10E5DBAAB2CDAC5BDA1D280CEE65B11A4788A122B7
            03F0BA60FB5B37DAEFD29C86FEE43C009017554B52219A4302E1C616153CB12E
            1C17709CF7CD609FB6D94DAB84E83CB91C0094C910E1D8A2F4054F010A7AC758
            5CF409FD3DDC6C3821C4145065503B031B59BB2B7FE83E48E4F257A527228407
            A91D00EAF73F6EB19E7FDED2173B01E8851F51D945A52723C4084373A457067B
            B5C58E9E6DCD0D3A31D8BB83FDBDF4448468424A0760DD603FB158D7DF36F8E2
            52EEC3A2FFE7D2931142CC016D93A90CDAD162A3AFB64506FE1DEC8316258655
            2D203A490A07E009C1DE1BEC2BD62EC1107AD6B3E0E3949C6DFAD20AD1157006
            880AD0EEFBF9D6AE7261F284902AFF47E989083128DE5F245A94B2C03EBFF485
            55D4DADF8758FCA2AA365F886E433ED11B83ED6CB1DCB00DA0E8B95BB0234B4F
            448841F07400B6B628A7D98616A468ECFFA83265EF0B317C1069DC3CD8AE16D5
            43E72E3D218BC701342D53874ED1093C1C00C640396B6F8B5FCA52F0A523C4FF
            6D8B75FA4288D1005131C2F0EFAC7E2EC9CC60AF316D3C440768EA0020EA43C8
            FF1505AFE1E6600705FBAEA9D7B710A30C51007205760FF6BC82F3B8B19AC705
            A53F102126A389038098CFF116FB889700652E120D7F6152E513423C9EF5837D
            28D8F656A682E0018B9180634A7F10424CC4741D00FA8693545742C5EB4FC1BE
            6E6ADF2984981A9E55EF0FB64BB0F933BF37CFA77704FB7EE90F4188F1988E03
            402B50A47197CC3C57BAED21C5797AE6F71542741F7203102463419E2FE3FB52
            6EBC67B07D4B7F00428C65500780C5FF348B67FFB9B830D8272DAA6F09214413
            96B398B44CD260CECA814F05FB5CE98B17A297411C0034BB6981BB44A6B951CA
            47172EEAF825DA2384F064658B0BF26B2D9FB01002690796BE70216AFABDF1F1
            9A29AD5B31C39CEE0AF6258BE7FC4AEE1342A464038BCF9A1CE2656C64DE1EEC
            87A52F5A08E8C70140D8E75C8B0A5C29E1CB41B20CCD836E2DFCB908214607F4
            4B9019FEB2A5CF6D428DF4E5C14E287DD1424CE500F0DF8FB2A8B495129AF3A0
            E8755AE90F440831B22C66D109A06220E5B1C09D16CB14AF297DC162B499EA26
            6737FEF984EF8F37FCE5EA3D1E2CFD61082144E04516C5C566247C0F5A8F6F64
            7AEE89824CE600A0B34DAD7F2A118DEB82ED64B1339F1042B48985837DCB62E3
            A1541C6C31F2294411267200B8F9FF6AE9BA6DA1D9CF8D7F67E90F4008212661
            078B4D7E164B34FEB6C17E5BFA22C568329103F00D8B252BDED0B0E77DC1BE53
            FAC28510A24F488066915E35C1D84442D708F6EFD21729468FF11C00C47ECE37
            FFD03F3DB3773425FA0921BA07E2678759CCE0F7663F8B2A854264E5FFC6F933
            1DACD6777E9FAB2D26D65C5BFA828510629AB029222F6037E77149867E76B04B
            4B5FA0182DC63A00B4F5FD8DF37B904BB055B07F94BE5821846808CF4C2A97BC
            77EC74357D6DE98B13A3C55807E0BC60CF751CFFE2605B5A0CFF0B21C4B0F019
            8BFAFE5ED03970F5605796BE30313AF43A002CD4273B8E4DB81F79CD7F95BE48
            218448C001C176771CEF0716A58285C842AF03706CB0973A8DCB8E9FC55FDEAC
            1062582127E057C15EE934DEC316FBAE480A5D64A17600D0FB67A73E8FC39868
            FA231DACDA5621C4B0B390C596E5CF741AEF1D16550885484EED00BCCD62231E
            0FF60FF6A1D2172684109958CB62E9F4FC0E635126BD45E90B12A341ED001C1F
            EC250EE35D65F1CBA036BE4288518284C0CF388C4332200AAC3797BE2031FCE0
            00CC17EC6EF309FF5346784CE98B124288CCB0FBA7E4794587B1684DFC93D217
            24861F1C800D2C8AFF34E5F7C1362B7D414208510816EE431DC6A1BAE0FDA52F
            460C3F3800249D7868F3BF3AD851A52F4808210A4114F5FA604B351CE7AC601B
            97BE1831FCE000D0E96A9786E3DC146C058B9296420831AAEC136CAF8663DC17
            6CD160FF2D7D3162B8C10198196CD386E310F6DAB9F4C508214461D8B99FE130
            0E1BAA1B4A5F8C186E70002EB198B9DF84B7043BA4F4C5082144613806B833D8
            020DC77996C567B310C9C001C0CB5CAEE138F40FF04824144288AEE3B1A9DACC
            6262B510C9C001E0BC69C186E3AC146C56E98B11428816404F952D1B8E81BCF0
            D1A52F440C373800FFB539BB020ECA32A6A63F420801B4547F45C331A4052092
            C3C2FFFF1CC65933D865A52F4608215AC0B9C1366C38C69B83FDB8F48588E1C6
            CB017891F9B612164288AE729DC52CFE26C80110C9F17200F6361F1D6C2184E8
            32CB06FB87C33872004472BC1C00C9000B2184D91BCCE7EC5E0E80488E970340
            22E1CAA64A0021C46873A2C523D1A6C80110C9F17200E08BC13E5EFA828410A2
            10AB04FB5BB027388C25074024C7D301B823D8D3AB57218418357E685115D503
            390022399E0E001C18ECBDA52F4A082132B36EB03F98CFEE1FE40088E4783B00
            7403A4FEF5A2D21726841099982BD899D6BCF6BF1739002239DE0E005C1D6CBD
            60F794BE382184C8C017827DCC794C39002239291C00F859B09D4A5F9C104224
            66AB6027985FE8BF460E80484E2A07001006DABBF4050A21442290403F23D8E2
            09C69603209293D2010012020F2C7D914208E10C2DD4CF09B67CA2F1E50088E4
            A47600FE13EC1DC1BE5FFA428510C28915839D62B1EE3F1572004472523B0056
            8DFFE160FB97BE58218468C8332D363E5B2EF1FBC80110C9C9E100D47CD962A6
            EC7F4B5FB410424C838D831D15EC2919DE4B0E80484E4E07008E0FF6FA607795
            BE7021841880B707FB56B07932BD9F1C00919CDC0E005C1E6C87EA550821DACC
            7CC1F60BF6EECCEF2B074024A78403000F06DB2BD8370ABDBF10424CC56A1635
            4DD629F0DE720044724A3900354707DB35D8ADA53F082184A8E0B9F84E8B3BFF
            F90BCD410E80484E690700EEB4180D38B8057311428C362B073B28D81685E721
            074024A70D0E40CD8916350366959E881062E4983BD887827DCAE2B97F69E400
            88E4B4C90180072CE605D05CE3DED29311428C045B06FB7AB0354A4FA4073900
            22396D73006AFE69B197000A82D20D1042A460558B0265DB949EC838C80110C9
            69AB03507369B0CF05FB55E9890821860654FC5027DD2DD8BCA5273301720044
            72DAEE00D49C1BECE3C14E2F3D1121446741C18F73FEDDAD5C767FBFC80110C9
            E98A0350736AB02F596CC4218410FDC08E7F8F60BB045BA8F464FA440E80484E
            D71C809A8B837D2DD84F2D761C144288B150D2C76E1FAD913664F60F821C0091
            9CAE3A0035575AAC1AE08BA2AA0121046C6E71E17F79B027949ECC3491032092
            E3E500DC66793A644DC4DDC17E64B159C7D505E7218428C302C1DE10ECBDC1D6
            2C380F9EA777047B72C371E40088E47839006866B3F86E5EF87A28193CC9A2AA
            E031C11E293C1F21445A58EC39DB7F63B0C50BCF8585FF4D1617EF1D1A8E2507
            4024C7CB017852B07B827D36D847AB714B7373B04383FDC0E251811062382091
            EF35165BF46E587A32151706DBD1A292E92F4D0E80E8009E0EC09DD5CF68681F
            6231F3B60D707DE7584C18E48B797BE909092106E689169F2D3B057B95B5279B
            9F24E47D837D3AD8C3D5DFC901109D2085030084E23812785DE90B1C035FD013
            2C3A031C113C507A4242884979B6C5B3FDD7065BA6F464C670ADC590FF5963FE
            5E0E80E804A91C809AED2D66E9B7ED8B0BF7053B2ED811D5EBBF4B4F4808F1D8
            3369FD60AFAE6C95D2131A07728DBE1DEC63367EF5911C00D109523B00B09845
            F19E5DAD1DB901E3412480C8C091169D813B9B0D27841800C2FBCF0FF64A8B8B
            FE0AA5273409975894103E6F92FF470E80E804391C809A1704FB66B0754B5FF4
            143C1AECEC60C75A3C26B8A2F484841842D818BCD862ADFE4BAC79D95C6AD8E9
            D39784AE81535517C901109D20A7030078FA6FB3D8EEB7A46EC020FC3DD8EF2C
            9617FEDE745420C474E059F3AC605B05DB3AD8C6C1E62A3DA93EE0F9C8424C75
            D34D7DFE1B3900A213E476006A4812E4FCEC5D16053CBA02498454149C6CD121
            F8A3A95DB11013F1548B0B3EB665B0254B4F6840683EC6C27FFE80FF4E0E80E8
            04A51C801A9203F982911FD0D6B69C9381F0C719162303D89F4D0E81185DF83E
            6FDA63AB959ED034C1C9FF64B0D3A6F9EFE500884E50DA01A8593ED82782BD25
            D8DCA53F9406DC15EC4C8BCE002D8CFF642A3514C309CF8EA7077B4EB04D2C2E
            F8AB969E5443FE10EC53C18E6F388E1C00D109DAE200D4AC68F168E0ADD68DF3
            C1A920A11015C28B2AA35E984E86EA6028BA06497B94E76D146CBD60CF0DB644
            E949397159B0CF582C09F6781ECA01109DA06D0E40CD33827DC8A2EAD7FC053E
            9794904D8C33807428678B1704BBA1F4A484E801953D16F90D2C2EF4ECF2DB5C
            9A375D88D2ED1FECD7E67B742707407482B63A0035540A5073FB6E6BA7989017
            FFB2E808E0185C1EEC2F16BB1A3E5A7A6262E8593AD81A9591A5CF62CFD9FD13
            4B4F2C1194F0A1F7F1358BDFB914C801109DA0ED0E40CD3CC1B60DF68160CFCB
            F0B9B4011E54440670082EAB5E7110D025D0118218142A6F58E457EF79A593DE
            D2A52796095A86D31C8C1DFFF589DF4B0E80E8045D71007AE10CF2FDC1B6B3E1
            DDA54CC683C1FE5A199182DA41B8CED4FE58982D65F108AD5EE0EBD76139AF1F
            141CE6032C2EA6F7677A4F3900A21374D101A859D6E2978C84C1B533BF775BE1
            7770CD048683A0C841F7212786E3B0A78D6364E52F527A822D80CA1BC4BBBE17
            EC54F379C60D821C00D109BAEC00F4828EF8CE16FB712F5A701E6D061123429F
            B32C7631AB5F710C6E0C768BC5E88228C7132CEED411CC99116CA5715E757F8F
            0FCF31CA6F0FB178C67F5FC1B9C801109D60581C809AF92C6A8BD3A2137DF161
            2825CC090E00BFC77F5A943D9DE8E77F58D43C10FDC1F9FBB2D5EB3293FC4CA6
            BDEED9C1C079A5BDF7C11665BBDB801C00D10986CD01E8057121CA086949BC5E
            E9C90C21F444C019B8D9E2EF1E87E0EEEAF5AE9E3FD7FFED81CAEEAC5EBB126D
            6057CEAE7B418B0E263F2F54BD2E56D9D89FF93ED43B795EDBDA05B3AB10ADA2
            74EFE71695387387F8A7420E80E804C3EC00F43223D8AB2CB61ADDD0E2435D94
            A7D719B8C7628E02471575C3A5FAEF486E1C2FA44B99E4BD138C8DB4F4787D26
            509A5CA8FA99F3F2278EF9BB85AB3F2F56FDFB2E4A540F23ECF459F409EF23A8
            D5E67C163900A2138C8A03D00BDA022FB5F805A51D6997A587851866C859393A
            D8AF2CEAF377A5CF861C00D10946D101E885F02CE584DB04DBDC66EF028510F9
            6181A77FC609C18EB2D86DB38BC801109D60D41D805E0805AF6331891087E0D9
            A6B35B2152739BC5B6BBA7043BD6628269D79103203A811C8089213AB099C53E
            E63805C32C452C442E38BBA721160B3EB5FA5D0AEDF78B1C00D109E400F40749
            837442E39860638B6A84125C11626A58F0FF6CB3DB649F66B13A64989103203A
            811C80E9C171C13383BDC0A233B099C5B24321461D2A3358F0CFB698AD8F12DF
            1DA52795193900A213C801F0038760E31E9B517A42426480324CDA5AD73B7C3A
            EC3D507A52859103203A811C80742008B3964511A23A52A03C02D165D063B8CA
            62574A76F7ECF2D59D724EE400884E2007202FC8BEAED763F45E5FB2F4A48418
            0742F9575A5CEC6BBB30D843A527D601E400884E2007A03C34782152B066F54A
            AF768E132450247281CA1E2DA52FA95EFF529916FBE921074074023900ED8486
            303486C1192052B0BACD760C24632CA60BD9F75707BBDCE28EBE5EF46F293DB1
            21430E80E8047200BA050D699E5ED92A3DAFAB065BAAF4E4442BA08FC2D5955D
            D5F333E1FC9B4A4F6E449003203A811C80E1812636BD4E416D4412C83DD091C2
            F0706BB01B825D6B732EF6C3A0A4D775E400884E20076074A0E7FCD32C3A03CB
            543FF7FE7986E978A10D70EECE22CE6EFD9FC1AEA9ACFE330BFD3DA527292645
            0E80E804720044CDFCC19E6AB37BD82F33CECFD8D2164B1C45FFB0A873CEFEAF
            EA75BC9F6FAEECB6D293158D9103203A811C00311DE6B5E80CD05A99C8C2627D
            1ADD1639AA98ABF4054C0376DD0F06BB6B8CDD39E675ACB1B80FBBF4AD783C72
            0044279003204A81E380238043309FC508040E02B90A8B55AF0B8FF9372441CE
            33E6EFE6AFFE7D2FDCD3778DF39E77D9E3EF7776E6F75B4C9C7BD8E242FD68F5
            FA70F5F7F79BCAE1C460C801109D400E801042F8220740740239004208E18B1C
            00D109E4000821842F720044279003208410BEC801109D400E801042F8220740
            740239004208E18B1C00D109E4000821842F720044279003208410BEC801109D
            400E801042F822074074822E3800CC71C5604FB6A8CA46631429B30921DA8A1C
            00D109DAEC00D0CAF643C15E695177BEE6916027063B34D8D116A55B8510A22D
            C801109DA08D0E0073FA60B02FDAD43DECE989FEED60DF3775511342B4033900
            A213B4D101D8CFA20330081C09F0A5DB3FD89FDD3E1D2184181C3900A213B4CD
            01D829D8610DC79819EC9BC17E13EC3F0E73124288419003203A419B1C005ABD
            5E156C19A76BBB32D8C7831DE1349E1042F4831C00D109DAE40078ECFEC7E3A0
            60EFB5983C288410A99103203A419B1C80C383BD26D1757E27D8BB128D2D84E8
            3E4420170F364FB00582CD5BD90293FC1B9E9D77057B20D883169F81BC52A124
            0740B49E3639007F0CB66EC26BDD36D86F138E2F84682F2B057B7EB03583AD66
            515784E7D6E2D5EBBCA5273806390022396D72002EB7F8C54CC56516BFFC4288
            D180C57DB7603B5ADACD450AE40088E4B4C901382BD80B125FEFB3825D92F83D
            84106559C46202F03B832D5C7A32D3440E80484E9B1C807D2D2AFFA5E43DC1BE
            95F83D8410E57889C5C4DF154A4FA42172004472DAE4003C2FD83989AFF7CBC1
            F64AFC1E4288327C32D8672C3ED7BACECE1693098548469B1C003835D8E609AF
            F7B3C13E9D707C21447E9E10ECE0606F2D3D1147AE0DB6A5C5E6674224A16D0E
            0099BA54032C96E87A77B1D83720159C37127A24A3F87A537F022172301DF9F0
            2E70A3C5BCA8EB4B4F440C276D7300E039C18E0DF69404D7BBB2F97BD473057B
            9D459D81F5AB3FD7FC2BD805C1CEAFECC260F724B82E2146955D2D9EF90F2B7F
            0AB671B07F979E88183EDAE800000B357AFE5B3B8E795AB02D1CC783A7591430
            DAA0CFFFFFBFC1FE6AD11938AFB24B9DE724C4A8C0F78FAA9E054B4F2431DFB3
            58CE28842B6D75006A3609B647B0975B3CE79B2E8F5A0CA55DE038B755829D1D
            6CC986E3D0D2F847C1BE1AEC6EC7F90931EC9C62FE4E7D1BE1194D6ED4CCD213
            11C345DB1D809AA7077BBFC5D298E978FBFCDB031CE7835C286D879FE938E63F
            2D0A969CED38A610C3CA66C14E2F3D898C7014B09EF93CAF85788CAE38003528
            7BED6C311CF68C3EFE7F1A00ED1EECBBCEF3F870B0AF24B83E74C4B7B2288A24
            849898932C7E5746896D2CE64709E142D71C80DE7913FA43E98B2FC53C63FEFB
            C3C17E67510DEC8A04EF7FB5C53C8514DC625112F98E44E30BD17588BC211D3E
            0CF5FE8380D3F3E2D29310C343571D805E3812A0C9C7F21633F0AFB398647757
            A2F76371BE3CF1357D3DD80712BF87105D85EFC7FB4A4FA2003CAB57B5B80111
            A231C3E000E4E615C17E93F83DF82C97B57824208498CD7CC1FE61F199338AEC
            13EC63A527218603390083F3DA603FCFF03E542DA4964616A26BBCD1465B23FF
            668BD1CE474A4F44741F2F0780DEDAA372664DE2D14919DE0759D31F95BE5821
            5AC61916857152F090C58D0CCFB207AA3FDFDFF3DFEE1FF3FF2F6AB3CB93512F
            E5794A27C22755962A4761876047241A5B8C105E0E0035F17F2F7D3199E08B7E
            AB3D5EF12F05A9658B85E81AAB07BBCC69AC6F5B5C44EFE8316FB53DAA966A67
            60198BBD489EE530EEC9C15EE43C57318278390074F23BAFF4C56424470912B9
            06C794BE50215A8457F2DF1F2C4A8EE7AEA97F76B08B1CC64151146D14350A12
            8DF07200D0E33EB8F4C56464A36067261C9F2FF8532DF6121042F826FFBD3DD8
            0F0A5D076AA4FD4A874F8692014563BC1C809F05DBA9F4C564E66B16150653A0
            109F108FC72BF9EF5E8BCEF5BD85AE03E7C363B3A46440D1182F0780B6B7CB59
            4C941915C8012049EF0DCEE3B2FBDFD4A40628442F5EC97FA882BEB3E075A05B
            82ECF7220E636D1FECC882D7223A8E97030078E88795BEA0CCF0F9F130F98CF9
            B52FA6B7F9874B5F98102DC253F90F3DFD3F16BE9EEF047B87C3385206148DF0
            740038DBDAD071BC2E8137BF9DC5AE85D4EF2F33CD7168FB8943F1DFD2172444
            8BF04AFEBBD062F25F69D6351F2744C980A2119E0E00BCDEF288E4B49D152D3A
            43CFAD8CECDFF926F9FF912F26A1E767A5272E44CBF04CFE6B53692DCEC8FA0E
            E37CD162CF132106C6DB01A0B73D5AF9DEF5B45D67EE60EB58740AD6B2182120
            796756B0532D26FD3D5C7A9242B410AFE4BF7B2C26FFDD57FA822ABC9201A914
            5AC1940C28A681B7030078D8BB94BE3021C45040B9ED460EE3944EFE1BCB4216
            231B4A0614C548E1000099F13F2D7D7142884E336CC97F63C129D9CD619C1383
            BDA4F4C588EE91CA01A0C676336BDF174E08D11D3C95FF3CC477BC9132A0284A
            2A0700D0CB2723FEAAD2172984E81C9EC97F6D562A5532A028464A070058FC37
            0F7663E90B1542740A4FE5BF65AD3DC97F63215FEA7B0EE32819500C4C6A0700
            2871A3718E220142887E19D6E4BFB1782603BE3AD851A52F4874871C0E00DC64
            3149E592D2172C84683D9E6D7FDB98FC3796832C1E533445C980622072390040
            08EECD260F55083139C39EFC37163442FEE4300ECF729201FF5EFA824437C8E9
            0058F55E7B07FB5CE6F715427483F92DE60C7924FF5162E771BE9E039C95F51C
            C65132A0E89BDC0E400DA1AA9D4DFDEE851011BA6BD205F3AD1625C59B52BAED
            EFA070047090C33874666583F51B8BF957424C482907002813E4CBFEBBD21F82
            10A208ECF6B70CB68DC5665A4B3A8ECD62EAD1712F172403D2267861C7311151
            3AC6E233F66C53D4558CA1A40360D57B231DFC91607795FE30842804E16E6AC1
            970EF6E460F304BBD3A293FC171BAE0A9A2582BD22D8B616AB83E66B36DC84F0
            797A88ECE4C42B19703C10093ABAB27382FDA7F4C53A81134977C519C116B7E8
            48B1961009F95BB0BF0ED1B5BA53DA01A8C1F37D4FB05F979E8810995833D89B
            2C2E84246E4D26778B33704AB0C3821D6FDDABF59ED7E2A2FF96602F0AF6C4C4
            EFC7C2EF21AE931BE67C6186F7A12AEB27C17E14EC8AD2173D0DD075D829D88E
            161328E79AE4FFE50888E8079D56494057A3BA1EDAE200D4706EB58749D2520C
            2FCF0FB64FB04DA6F9EF6FB11835FB8EB55F608B87737DA6FFE48CEFDBA5E4BF
            B1E0BC3C3BE3FB110DC011F8A5C58E896D85B58AE3A2F7067BA94DCF89C41938
            20D87EC1EE2E7D416DA06D0E003C14EC6B16B359BB92C023C454109E44946647
            A7F11EB51831FBA645D19CB6C042CF82CF6E7FDD02EF4FB9313BC4AE3E3B705E
            BE5BE07DEF0F76844567E0F7D69E7581903E913222C4AB398D797BB0DD2D4605
            469A363A003584A9F6B67843762DE429442FECFA7F6E51AA3505175B7404788F
            070A5D238B3DD1BB1D2C86FC4B81E67FAA73F41C9004C891E84205E7808E00F7
            D30FAC9C8432C762EFB6582DB668A2F7606D21A230B2C7026D76006A2865211A
            C0CDA8640ED135E8D5CE796BAA64B75E086B1E6A3182362BD3F521D7BB67B097
            994FDBDEA67431F96F2C38316F2F3D098B470287580C99DF90E1FDB87FB6B0E8
            C0BDCAD2E78A0039172F0F767386F76A1D5D70006AC886FE6CB0232DB6BF14A2
            EDB03072DE9F7B61C451269F865DDCCC04E3B3C327098B1DFF1A99AF6D3290FC
            F510D3290DEA8517949E440F0F073B3CD8FE9646CE9D3E08A8C412E65FB5C0F5
            9173465EC1DF0ABC7751BAE400D45012F5158BBBAA874A4F46887160E7C2E2DB
            86263497063BD06205C1FD0DC77A52754D3CA8972E7D61E340DDBF87984E1BC0
            992991433119AC1554A3101138C961BC6758BC9758FC3DF50FA603790154E49C
            5D781E59E9A2035043072D34C3C988968680680B0B5A3C8B7F79E9898CE10E8B
            C768540F5C3BE0BFE53CFA03C13E68E9CE639B42B87A39EB6EF2DF58BC940153
            41F50092C33307FC774F08B6B5C5B3774A42DB706C54F3A0C536D447949E482E
            BAEC00D490C04134E01B16451F8428C5521695D7DADC8086E30194E188509C66
            937FFF09F5B3ABFE98F9AAF4A5E013C1BE507A128E2006C5F3EC69A527320544
            027004FE30C5FF87E34849E8BB82AD527AD293C0F1F2872CE6D10C3D5E0E001F
            D8E72D4FA2D344D4E1A96F5B7CC03D5A702E62F460F7C9FDF78CD2131900A462
            7104381EE8CDF6465885D2AB4F5BBACA054F10B3E1ECBFE91147DB208A8472DF
            134A4F640A78F622B2F3499B731346E91EBB7D76D6252B1B06E5F3D5F50C355E
            0E0067833382FD2AD8CAA52FCA620921D9D0843CAF2E3D1931F4B04B63F15FA9
            F444A60947689444E13C73EE4CB2ED334B4FAA4F380A7C810D6FE31B16CF6F94
            9E449F105D221ACBFDB3563577B2FADB14E61F04A2001C7B753D4A3E219E0E00
            72A58B593CB7F2123B690AD736D362290B1E6AA99A5631BCB0E367F15FAEF444
            46906383ED62D1E11F668804A06CD8C6C4CB6187F58C638BA1AC3CF376006A28
            1122F378B1D217D803E1414AA37E6AF1DC4AE242A2296B5BBC97962A3D911182
            68C56F2D462C66969E4C4638437FADC5A399E75A9E1A791121AA81B2E5D0E9D0
            A4720060798B21F8AD4A5FE438D0658DE30A340590BD1CBA5FAC480E8233275A
            BCF7453A28F53DD762940523D96CD4BFAFC84ABFD0A2363EF6F4D2131A01582F
            D8D80ED5C631A5035043F2C757833DA5F4C54E006D23D154C719202B7AA87EC1
            22092CFE2C466D2D89EB3A7C2749E465A74F846564A55AFB841C146AD8E9B8B8
            B1293A900A123291BA1E9A04F31C0E00B0F8A322F5466B774208D77082C5522E
            767777949E90681D24379D6E79BBDB8D02E8DFD3910E671C319651DFE54F17EE
            4B649991A07EB1C57242E1071A1FAC6343717FE672006A688A423BC62EF4EAC6
            CB43EC829D08C94697979E90280E097F1C19A53CF3476A95B236A449BB543635
            1D78661079A32B1B9FEB50265A1584E7F2AB2D7667A4FD74DBCB099B42C5178D
            B1F8EE2C90F07D38DA26F9B4F3D501B91D00E02624A1823ACB2E65B5D20CE3E4
            CA4EB598472046074AFCCEB0B4D9FEEC2EF86E70EEDD15E19441619127AC8F82
            2791B6874B4F6844E0BEDDD9E23DD5D572D5F1E07E225A4BA9E449D59F9F6D71
            E3B64CC2F7453F63F7D217DF94120E400D1E1AED1E3F62EDCD0F98086E323C4D
            9C01762E67D9F048908A3979AAC5C53FA52ADB97837DD4E6FC3ED6D2A93C6C48
            A86DF311DA64DC18EC87950D6BCD7E17E07E2271906E83E40D74F588A0EE5448
            B5D955E3FCF715831D176CF58473F892C5EF6C6729E900D4D004E27D160517DA
            543638081C17D0BC83450287E04C8BAD5945F759C2E2EF3595300E678908A67C
            A78FFFB74DCD53FA85F37C8EFD38DB1F9AE4A921811D32CD9D76B3F64B3DD770
            3CC6A2FF639B7AD345B504F7DDA609E7D36909EA363800352CFEB4177DBF75E7
            E136113CD4C919A0D7346D3DCFB7D8CE580FC06E41948ACA90E7261A9FECF6D7
            590C850F02ED5377B618412BD13E752A08EB93D0C7C23F9546BC280F12EEE409
            B0115BBBF464C681882BBB79C2EE445D0759B3E8677188450D85143097B759D4
            A5E81C6D72006A380EF8B045CFB4EB8E402F0F588C12E010D48EC1DF4B4F4A4C
            08A55424A86D9B687C2A4C08ED37E9FBCEF7974CEFDDABD7D2495EDCE32448ED
            1BECFAC2731183C3FDC43D49739FE7979E8CCD96A8FE96357B56725DDC931F4C
            344F4AC7516B3C31EBA7E3401B1D809A3A098AF0E83025ADF442BD73ED0CF07A
            51B07F959E94780C761BEF4934F62D16CFF32F711C13311822023B5B7E7D0224
            B6BF6BB1D457F7EF7080D0108EC01605DE7BA226554DD9DB6283AB14701C41A5
            C5C5493F1967DAEC00D4B013631746786A934C9F4B496EB7785C7079F54A77AD
            4B2D3A0B220F74B7DC37D1D834AF2109EB8A44E31335A34E19C73975431FFAA7
            D340681FD3FD39AC6C64F1F7BB51E2F721CCCF5118E7FB5459A52AB123BA4CC2
            6D8A645AB42C36B45831D609BAE000F442A732FA93A3875DB2F57009F87C710A
            2EEB79C541D08ECB1794BE0EB734E174B2DF59FC7375A8E4A1CDF1C0ABCC571D
            8E8735C7237B06BB36D3B588B270DF7EC5E233D8933A9BFFEB96EF5E22E911C7
            35C5779C6733DFBB1CEB6163BAE600D490BDBAABC56CE8613D1EE8171C006EBA
            6B82CDB2F825AA5F87BD4B9A3724FBCDB434CEE595161FA2257607B4E8464F80
            23B5A69536ECD2D845FDADC07588B2B060922C4844A0A91E069B973ACC7F7F81
            6B416FE3604B239B8C4C383939AD17B6EAAA03D03B7F4A3C76B6A87835ECCA69
            834288B6D72118FB7A7BE909B60816C63F059B91606CEA94B94F4B3B640B5A3C
            1E20B7618D01FF2D47511FB00E263A0977B88FF6B2985437FF00FF8EEA28FA3B
            B0F09F5EFA222C36F7A19C304524E09316C5EE5A4DD71D805E58FCD1BFC6B3DB
            D8BA2B98921312576659146941D990E4B49BAAD79B2D4617EABF6FBD37DB105A
            7EBE21C1B884FDC95D6953563CDF8DCD2D3A02642F4FB60BA25AE1731633B1D5
            284BF432C3E2B100CFDDC99EB76C34A80E21ECDE3611280491BE67FEEB0525DF
            54525C58FA022763981C805E506CE37880DDCEA81F1178C0E28F138033805370
            B33DDE59609140F8E8AE1EEB923222D2A1D4AB7B3F04480A62F16F73B9E70C8B
            8E0F0D64D6B4E848F3FB239BF9288B65589E99D862F8406D8FA453EE75C4AA70
            2859F4114563C78F26C403A5273909E4C91C9060DC9916AB295ACBB03A00BDF0
            707F7565CF283D991102A7A17606B8371EA88C3F73E6F760CFCF0F553FFFBFEA
            E7FA4CF0EE6A9CDEBFEBE5411BFFC1C2223677CF9F0953D6E7FA84FAB9EFC996
            9FABFA6F9C6B3EC7F9FA719608FBFF35C3672DD281E8120B1AF74C6FFE447D6F
            12159183341BBE535D143CE348639F04E3920B7052E98B9B885170007AE1DC73
            1B8B61CF17949E8C185A581CA89FBEA8F444C4B820114B649048219AF1CB5A94
            C2A539199D1E17A96CF101C664D1BBBDB2DB7A5E8992CDB2D9B937375A3717C8
            5180A3AE4F388F7974B05796BEB089183507A0178453EAC8C07AA69C01E10311
            09B2FDCF293D11F1D8738908E01A9571C48136C2200BBB372CFEE48350C68BBE
            C79F2D0A4291283A143DE63B8EB70018B2D834136BA54EC6283B00BDE0F9BFB8
            3214DABAD69D50B40342C2E8081C557A222308A167167B227B1B583CD259B9F4
            A40680E32CAA50CEB5D84C8CD79B4B4F6A04E1B8E78860DB398E896ECD4F4A5F
            D878C80198134A4210BBD8B232CE71E76E34A21815686495229948CC09CF2EBE
            A72FB2F81D65E11FA6DE2140548056E3945ED204E78ED2131A11C80BA296DFAB
            1F021534A964C51B2107606A0817729EFB128BA553AA2A10E3F1554BD76C4444
            A83FA759CD4BABD7A54B4F28231C0FD055F4F8CA682C964A2E57C436E01CE3AD
            E23016BD5E5275146D841C80C1418570A3CAD875B00B29DD854D948590E16B6C
            F8B5124A403B5776F91CAD10961DB65DFE744151925EF7BF0A76B6C919480149
            A238014B351C87DFD50AA52F663CE40034877C019C016A6011205AC7E279A418
            0DA8F127B9ECC1D21319223887A57EFA751633A84B26ED75017A4BFCC2A2AADD
            95A5273364701F9ED6708C7F5B4B556AE500F8C30EE579161391D6AF5E9F5A7A
            5222193C1C4AB44C1D4608B7D2D29885BFE9AE6B14E1597E86458D7B9A35C929
            6D0EC74C4D25BCD1316965F33A390079600743A9E146D52B4E811E70C30167B3
            2C5CB34A4FA4A3F00C22D9163536CEF6759CE6030983649E93807655E9C97418
            1A5F7DA5E118A8A72E53FA42C6430E4039102059BFB2B52CD629CF283D29312D
            5010FB58E949740C76443B5A7CC0AE597A32430C7929C759AC4E39A5F4643A06
            4751384F4D13BFE9D63A68F3AD2CC8016817A88F2150C4CDB27AF54AC4A095DE
            A3F81F887C90E4D366BDF3B64048750F8B4D5874B69F17AA08F6B3A853A184D5
            A921E9F4D70EE3FCCC62E7C1D62107A01B705CB06665F43320E48CA3C0A2A390
            693B78ABC5C639627C784610E6A7A5F022A52733E2D09FE24BC10E3339029341
            C4C423BF0787F76BA52F663CE400741B4AA42855797A65ABD86CE76079937390
            1354DC9E5D7A122D84DA7D445068B6B258C3B1842F7F09F6598B65AC2A237C3C
            4460F97C3C24E2D7B628FBDC3AE4000C2FB573B07C8FADD8F333D1835666A676
            18CA40CF2A3D8996C0BDF52E8B0BFF12A5272326E53C8BBBD4734B4FA4457C3B
            D83B1DC6A1CFC3B34A5FCC44C801186DE880D6EB1050AEC871030FECA57B7E9E
            A7F4443B027DCF5F537A122D80F3CE2F9BCA5FBB04EB0067D5386C37969E4C61
            885421DEE351BBFFA160FB97BEA089900320FA81DFEF788E01B6D804368AD105
            7AC39331FC8FD21329C4AA16774ED245E82E88D650F6B6AF8D6E522B792A5F75
            1887CF8FCDD5EDA52F6822E4008854D05063AC5380478D50124A898B57AFFC79
            BEEAFFE7BFCF5DFDBFFCB745C61973AC63C151C70263FEEE5E7B7CCF751E6A0F
            573FDF65F19EBFDB6202D43D166BF9DF643E4ECB17CCBFA778DBE173DBABB279
            4B4F2603F75B1477A9EFE5610485CBDD829D5A7A2299216FEA6FE6D303E0FBC1
            76297D4193210740880819FC3B3B8C73ABC5E39451516143C4875DFFD34B4F64
            1AB033BB2CD83516C55A68BF7B6BF55AFFCCEFF1AE49C620C971D1318673BB9C
            C51C9C95AAD719D6BDA334D686432C36B91A95E7FB36C18E711A8BB3FF4B4A5F
            D064C80110224253A73F3A8DB573B0434B5F5062F8CE7FC35A5ADF3C86FB2C76
            6423ABFBAF9521CE726BC639B0B32427829D25D522A8813EC7BAD15D1467E8BD
            161B0F0D3BB45E7E91C338BF0FB659E98B990A390042CC86AE6A1E3DC087BD24
            70338B32B3CB959EC804B0609DD56317DBE38F84DA0479341B54460F914DADBD
            F9333FB5D8ABE1EED213490451AC2BCCA77C7A7B8BFD185A8D1C002166F3DA60
            3F771A8B56D1E794BE206738EFDEDBE259FF134B4FA607F23B665A546DA33953
            973BE291CF42073AFA226C6DED8B10CC0AF6461BCE72D7032D3A384D210998DF
            DB23A52F682AE40008311B16B86BCD67677BB8C5AE76C302E7D8EC00372C3D91
            0AC2FA27585CF4D1BABFABD970ADE599169D8157598C4E7908D33485A4D92F5A
            14116A6B64655048E8A4FCD143A592BE20FB94BEA07E900320C4E3F9A4C5075B
            5386A92490737E12FD4A4BF8B2D890A045C2E6C9363A899635E40FBCA9B2154B
            4FC6E23937BA1737979E8803C8541FE0300ED5212401DF52FA82FA410E80108F
            8733D9EBCDE71C1647E2D3A52FA80164ADB3F0BFADF03CC8D2FF81C585BF696F
            F6618033EA4D2C269BBEDA7C046BA60B0EEE0ED66D1541D64112439FE13016F7
            E85B4B5FD020172E074088C7F3638BE79C4DE97249E0532C26316D52E8FD89A0
            1C1DEC608BB5E86A5A333E2CFE3868EFB772EDC4C9C1403CE7DBA53F8C6942AE
            C5714E6391CCF987D217D42F720084981332F82F721A0B47E2B0D2173420AB59
            0CB5AF5CE0BD09A1FED0A21ADDACD21F4487207F859DF8872D96B49680280DFA
            F9AD4F7E1B038BFFD60EE39018B971E98B19043900428C0F0D529EEB300E8EC4
            FAA52F6600B6B2D8D32077E73E167EB4133E67D2A26FCA46C1F60CF632CB9F34
            48B4866389AE940A925781F29F47E91FF910BF2C7D418320074088F121F1CD6B
            E74EE6FCF9A52FA80F68DB4BDFF29CF2B664F37FCBA2F67A2712A73A040EEC7E
            161D829CD0FA1645BDEB4B7F007DF0F560EF7318E79F168F603A15FD900320C4
            F8D0938092408F8E7694CFBDA1F4054D02CF0132A0DF9BF13D39D327D7829229
            25F6A58512C22F595EB96616449C803F95BEF849207F8268D3A20E63513DF4F9
            D21734287200849898BDCD278BBFCD2581843E49B4CB99B97CA1C5A4B561134A
            6A3338B46FB15899B254A6F7E418806388B34B5FFC0420FA73A0C3381C5F5196
            D9B972483900424CCC321613D13C9AB8EC1DEC33A52F680CA8F971EE9E4BCF1F
            0708154122221ECF1D3138EC76F7B618EDC9A1E64827CE6DAD9D5D0539AA58D3
            611C22596F2E7D31D3410E801093C362F57A87710873CFB0D96D894B3377756D
            3B64782FC2FD9CB57ECAE28220CA435E0AD516AB65782FCA60B9CF7E57FAA27B
            20D9F524A7B168EA7461E90B9A0E720084981C1E945E2227ECB47F56FA8202F3
            06FB85C59D596A10F121F47C46E98B1673C07D8053F6114B9FF8C9311859F2BF
            2E7DD115BF0DF6728771A8167A5EE98B992E720084981A5AC96EE0304E1B1E16
            3CF429557A4586F7A26320E7ACF716BE6631396B5BACE14F5DAE4AF48B84C463
            0B5FEF8C60579BCF11485B9CFA6921074088A9417BFD50A7B128CDBAA0D07510
            F6FF8DF9889E4C0619E0A8D39D50E83AC5E0706FA0C1403420A576C00316EFBF
            DF17BCD6FD83EDE1304EDB8EF506460E801053C3AE999AE6251DC6FA86F9D41D
            0F0AD9FEE81AA4EE50C8EE0EF5433D0FBA0961719CDDC513BE071121CEE04B68
            63F03DC041F5A88420A977EF02D7E0861C0021FA83DDD1271CC6E14CBC84C4AE
            57AFF389E039421DF4DE26DDFEAE43C9EAAF82AD97F03D582F5E60B1094F4E88
            C09DE7304E9B4B7BFB460E8010FDB19CC528804778944E830F659CFB472DF66F
            4FC53D168F497E93F19A445AB847A9DCD82DE17B20B4454E4CCEFA798EA6BEEF
            300E7934AFC938EF24C80110A23FD0373FC269AC2707BB23D3BC770C76B8A53B
            D7BD22D82BAB57317CEC1CEC20F3D1C2180FF2615E18ECFE4CD78300D5D71CC6
            B932D81AC11ECD34EF24C80110626AC816BE24D8EA0E639130B4B0E5491CA284
            F1B460F3271A9FF37E3412EEC9702DA21C5B5A6C0DBD48A2F1290DDCDEF21C1D
            7926F4124DF861863927430E80105383CAD7214E63FDD1D29EADD67064415FF2
            54B2AF94F8211FDCE91D90E89B752C3A7CCB261A9FF6CF7B66B80E4A1EFFEC34
            164782AB5ADEE33C57E400083139944711DE7E9AD37848E17E39F19CA95A4078
            E73989C6A77BDFEEA664BF5183C658C7595C44BD611D7AADA56FA7CB9A7799F9
            292072A47040E23927FD30E4000831315E0D4380D6B72B58FAEF0ACD7DDE9E68
            6C9C97BD12CFBF341C992C6FB11704E570388168E87314B458F5FFDC65F1D949
            5DFB6DC16EB7D8CE9812B3CED685F7019FC7D1C136493036DF0F8EAD2E4B7C0D
            BB5ACC6BF080DFF9CAD5DC3B871C0021268685E02AF369090C1FB7B4D9F8E0F9
            70EB85DD3EBB9D6F269E7F4EE8E0B64E65CFB228EAC2D1C9120DC6E473C20998
            15EC6FC1FE62317F84B0F3EDA52FD889052C4602364D3036D1364AF552E69520
            7B7CB1C5243E0F3AD90A18E4000831319EE573943C9144F860C2F9AE65515CC5
            3BE98F458D84A74312CE3D3508C0AC6B31A16D0B8BB2B729C56EC6038780BE12
            6759EC8E37ABF487D28085829D18ECF909C626E170FBC4F3E73E38D9692CDA1E
            1305E89C8327074088F121E4CBA2EDB54850467854C2F92E68B1A4CAA352612C
            C8A67A944EE586DFE176C15E1A6CF3604F293DA131B0DB3DDEA27EC299D6BD9C
            0AAA02584453E49AEC623EF5FA934152E34B9DC6CA95C4E88A1C0021C6074D74
            AF643D4AF1B6483C5F1E966F4B30EEDE16254FBB02D18F6D2C4A1EA3393F5FE9
            09F509BAF2A8EFD158A68444EE74E1D94F34631DE771691BFD6C8BF5F6A958C5
            E211CDBC0E63216F4C7ECF5D09E7EB8E1C0021E684A42F247B9773188B5D1D65
            7F17279C2F9DFD52A8F095EA5B301D887C50994077B6854A4FA621E40C90C849
            EF862E2C28E44C9C6E7E67EA3594B172C4F048C2B9738FBFD769AC0F07DB2FE1
            5CDD910320C49CBCC1629DBB073FB72896930AC2DA97065BDA795CAE1FFD038F
            E7432A38D727B48F93F2324BDBC5AE0464961311F8AAC5FC813643D5044750DE
            F7E13EC13E9670DE382F7FB728CED514FA02502EDC992A10390042CC09623DEB
            3A8CC3CE859DE9D509E74ADDF40ECE637236CAD9795B457E58F8D161FF74B067
            949E4C06FE63F178E0B396BF79CE2090BD4F24C03309957B90D2C08B12CE9BCF
            F5934E63D109F3B0847375450E80108F871DE5A94E637D37D83B13CED5B33F41
            0D3B4D1EE477279C771338EEA033630A319AB683234044606F8B47546D0467F4
            17E61B8DE14884AA8D544701ECFE71D23DDA7D3357F221DA1C39FB1F5E0E0075
            D2FF2C7D314238F03B8BE1E4A650EE479251AA76A13CB42E379F3C851A129936
            ACC66D1B38250754AFA30ED2B374EAFB82C5DF59DB2069F453CE635292FBA584
            73E6FCFE2B4E635162E8B589488A970380377E69E98B11A221849359FC9EE030
            D6B72DAA08A6C2337909780EB07B3B32E19CA703CA7B6831D096D6E3F7324CFC
            CB62B58A57BE8A17AC2B84C13D735F707AD859A7EA3A4919ED2CF32915A5B4D3
            ABBC30295E0E40EA1A672172F03D8BF5C74D2154F9F460D7259A27E1D0F32C4A
            D37A4158DD7BD7D694975B74A43CA31CC3C84C8B0A9057959E480FA8055E68BE
            BA14ECAAB74C3867F2003EEB300E6B2AA25CA9258D1BE3E50090A5FAC1D21723
            4403281DBBC97C4AC868119AA2261FF8CED2E86723C7314FB2B863F94FA2390F
            0ABBB01F583CEF17FD41C500824D07979E480F9405E204782605BED2622F8214
            201C35CB66F77B6802C755EF4F344F37BC1C00C2325EDD95842801AD6D7FE030
            0E8B28BB9E540226D4B97B661993A3C06EA52D49BC2461FED8FCFA2F8C1A2C8E
            44B16E2B3D910A8EA9BEE1381E257B3816A95AF05276E8D1EC8ACF9F7BB8D525
            815E0E00BC20D839A52F4888698214ABC7AEFAD7C15E95688E845529035BC169
            3CBEFB243C1E9F68BE8380F8120D553E643AEB6F0A4E1D5AFAE7959E88C53506
            A7C4339A93B2A5369500D79B8F3A20BF83B6E5D43C0E4F07807224EF7A642172
            C0793DE56F1EA54B2FB478269B02AF33CA1ABA06BE23D15C078132629E1F2F2C
            3D912182FAF94F58BA85721010DBA11BE2324EE351F9B0AAC524C81410817AA3
            C338744CF4A8284A86A703C038C836B6C1EB14621028A7F2501BA31226557DFA
            932DD67E2FE2341E63D102B7741FF3675A2CBD5CB9F03C8615125BA946292DEA
            B495C5EE815EFA0029AB6CE841E0213CC471E08C6037269A67633C1D00E00860
            136B4F329110534126FD2CF3C934278FE04789E689C6B857A22DFD09386BFF7D
            A2B9F6CB8B2C8AC678245D79C3D9EDAD95911C8AA3C4E7560B2491D8B6686574
            8C5CDEF2B717EE971382ED68E535030E0DF626A7B1A8B4A16CF7DA447325D176
            63877152EB1734C2DB0100EA52F72D7D6142F4C98B2D3E209B42D20F8BC08309
            E6483211255E5ED9D46DA8DA2199F1906073159E07B0433BCB6298FAF2CA5858
            06DDC8E000A005CF9112A59AB4C96537B960E90BB4D88C8A7BFD968273E02880
            84F127398D47D2EEDB13CD95F3FB5F398CC3D12209F2AD54064CE100F000240A
            7061E98B13A20F0EB7A82BDF94AF592CC34A012545BB3B8D4582183BA77F279A
            6B3F1029A15CAD54B21FBBF8E32A23F933955E031061C209A0CC92F6C41B14BC
            6E165FEAE853A953F6037A0507398D85834645408A464924A5DE106C2987B148
            2E3E3BC11C1B93C2010064813730C9038B7643CD3F215E8F9EF194FEA568D4C2
            0388DDA8D7EEBF74B3127A237CCBF277EE23844FE3247675A759B9F22C76C138
            9C84C23728F0FEE47E70FC93D2E9990C9C1F9CAEE73B8D870AA2D7B1C2589006
            FEB0C338DF09F6AE44736C442A070048A2D8C2DADB544408AF663A848F3DCE0B
            C7832CEE8F388D75AEC572DD52E1486AC28966E45CFCE9294FB481B6CCA5CFC0
            C782D3483484BA7DAFE4CE7EA0F10D51DA9B0A5DF79A163B6ECEED3016C98DF4
            DC48E1D0506940D4A4E9FDCA46981CA3D61D03A4740080070EE74E6DFBE20901
            5EE53E6FAEC6F286E4386A923D7A9593C046A39F524773EC7AE964972BFC8D6C
            2CBA02330B5DEF20B0F8D3EBE07D964F000999DACDAC9C601047665E4A79298F
            DF6606DBD4611CBE7BE7279AE3B449ED0000BB2334BDEF2A7DB142F440F2D9CD
            D63C2189B3F4A52CCD993AA2385E09B55427BC35C11CFB61338B89961EE22A53
            41781FBD842E8A92CD63519781F97B34A5990A366844691F2870AD5C1FC7111E
            CE2D1B4CC4B152AC315E0AA154027C34C1FC1A91C30100B26A4980B9BEF4050B
            51C139A847CB4E76B53B25981FC963846A67388CC50392C4BF12215FC2BD9CF9
            A62EF5432296F3DA5F17B8466FF8AC582C48FCF4C84F990C8EC088CEFCB7C075
            226AF549A7B1F634BF76BEBD109D61A3D0F4F74015CFAA09E6D7885C0E009051
            B99DC5B31F214AE395598FC4E93109E647D313AF0E9BE41178E89B0F0AB2AA9C
            C12F9FF03D48E66321412721953E7C2970DABE6FBE8D9FC6A3D4EE140D05A200
            1E65815436AC64511FC01BBE87AF74182755A2F0B4C9E900005F50D49B3C422A
            42348107CF4A0DC7A081CED29626A39C50B68734EEFDD575E6AEFFE6AC9F1E03
            2F4AF81E7FB19801FEA7CCD796139ED12409E2E07884CBC7833580288047DDFB
            A0B073F712CAA107478A081012F7BF741807B5D17D12CC6FDAE476006ABE6B31
            69A3C4D99310EB98CFA2C1EE6C9704F343169790A147B6FCD7837D20C11CA7E2
            7316B5E853C0338B70EFA7ACE5DDD61C217CCC029D4A6A9A63A2E75AFE1D2AE5
            ADDCEB1EC98FA9B4F79923C7004D1DB00B2C7EC6ADA1940300DC686F301D0988
            BC906885129E878EF836C18E4D3047AFD23F226E3813B9855F10BDE1582445C6
            3FF5FC3B5BCBBBAC258273685AEBA6703A81CA00B409726FCCA87EF8BAC33808
            0311EDBA21C11C71BEB66F38066B2D0E406B44F24A3A0080F7CE4E81075E8AB3
            1B216AA81546367467F351F7622142D4C55BFA97DA689265977618AB840009F3
            2634FFE40463A3F8C6596CABCE510B8098D2372D268A7A436E8C57795EBF20C8
            851CF3A20E637DDA7C3B66D6B059FD89D35854A8D0A4896385A251F0D20E400D
            0F0C2422CF2D3D113154B0DBDFD6E2BD45B993A7004DAAF6D724CA7A9C63E250
            13369E95608E93C1CEFC5509C6A5CB28E1DD3B325F4F5B21F91471A3059CC765
            3D7849B093325F8F972E00CE335100EFAA0612153906F0EC5D718F4529721CF5
            8B9DE7DB176D7100805F181AD19485DC5E7A32A2D3B0DB274CBAB3C54CF41490
            7CE6B523E8855D818763C1381E3D0E06C12B596A2CA758DCF9976E5DDC361097
            A195B277B405553DCA37737EDE332C96BD7A443550393C33C11CBD1273C783CD
            6F1D15B83FD17BCC419B1C801A3CFCBD2D7A45A57B588BEEC06E9F4582859F1A
            FF9472B338AB3816DE8E2A4946EC323C74FFE9BF7E4AC2CF602C2C42979BBFC3
            7574B0D7DAF095F879B1AE453D0BEF56C4E41ABC2FF3B5FCD6A2685C53E835F1
            9E04F323717DFFC49F016246F4EAC019B834F17BB5D201A8E161C279CE912D9E
            A3280FAD57EBDDFE1299DE933E17EB271897A8C2A10EE3D03C8828484E7117CF
            5EEF353830245A6AF19F1CDA0E9F6CBEFD044A48476F595D475368F0B5ACF96F
            20D70A7649C6CF83632F1C815F58A2A8409B1D801A325329F9C12B2AA15625DA
            47CAB3FD7E48259CE2B503CA5D6F8C33448993E7EF81871F510C85FDFB03B120
            164F4FE5C0DCCDA3B87FC8075BDD612C9E0BA725981F1535CB64FA3C6AEA5C01
            CAE75D352FBAE000D4706390DD794487E62C7C61B7FFB6606FB17467FBFD9022
            BCBEA0C59D4BD3F03FBB1E74D173CAFE9E6E51EFDF0BB2FD6917AB84BFC178BD
            C58D92A72386CCF5CF325E03E5AF5F7618877CB2772498DF619646FABB5F883E
            1215E077D2D839EE920350C3B908A58372044683D2BBFDB150F64746B077F90E
            99F31EB5EDBFB63459F81341C4E2B78EE39512A419163CF5F581AC7AAA49721D
            C3201B4D1262D3EF390E30E242DE6B049D3F0FC9F4594C864B54A08B0E400D67
            310706FBA965CC9A14D940079DB37DBE70393AA3F54BAA05F690EA5A9B82B3E4
            B9204F0625517C0F57731A8F67D1AB6D381AFA9482673A8993AF701C939E19DF
            CC780D74907D81C338287EFED9796E3C8B38069827E3E73115B419AE730506EA
            4AEAE50070369FABCFF7580813D25B80AA816B0BCD41F8C117FFE3166B914BEF
            F6C7831DEFEF9CC7E43AC9FE6F9AC4984A9C68223CC551A054D3A261838A0C16
            3E0F795D60374D5269AE8D162A9D073A8C439E8E579F815E52695D34850A023E
            37C49C6EEBE71F783900EC3A0845E44E8EE80519C8DF551FC0A94ED725F241E8
            8F73BBAD4B4F6412482A2253D9FBDEA294CB43121BB9D21D337D163C3B083D3E
            CB693C162CB2D94745DB3F35D4AB93A7E2B53143A4E7804C73C789FDA73517DD
            3923D8A609E647922267F1A95B354F17360254D021AF3C69E2BC9703F0A4EAC3
            2004B171E9ABB75842482D284A5977969E8C98127692386E1E52A0A96087CED9
            F47509C6A68FBD472F7392C07E9EE9F3A0CBDF894E63B1E8A3419FB3C46A14A0
            83E0079DC69A6531093797360BF756D34E92CC1567E2AE04F3436720E7B1C874
            38DBE233E1FA89FE074F078085168F8D075989EE63E341E20ACD5A08531E6FAA
            276E1BDC7F78AA9FB27686FB6B5028E348E2EF89C63F21D88B1B8EC1224A8F83
            140FBBF1A0E46C4BA7B1E81AF8854CF31E25A82C6133B482D3780832FD22D3DC
            49FA3DC8619C943931297B3278412485E65CE3E642783B003524F27024D0A6E4
            2D7205089152C671B6D3758B66D095AF2DCEE2789091BE6F35CF81926B0600A7
            99457BC186E3A0DDDED489E817C2FE5EDAE538556B989CF354B0001EED3416BA
            00CFCF346FF4FCAF7118870DE99E09E749A221B92B4DA31529A16260331BA75A
            20950300D469E304BCB2F4D58F03ED22A9A3FC91C59A63911F2F0F3F05EC9A7E
            6C31B336F51112223A1E6A6B74FDFB4EE2B9D6B0EBF1925AE5F9E0B54089F121
            37EA654E63A186F7974CF326F2B672C331D8EC6D9461AE54C250C543E5D29332
            BCDFA01009789E8D390E48E900D4F0A1903CD2D6F35DBCA2DF56E6918825A606
            89514A7DDA143A237186F37316FD3F647C5FAF5EE8D46A5F9561BE943FF130F1
            68404352E51619E63CEAAC6DF139E7911098B347001BC8DD1A8E41646931CB57
            194377469A70B1C1D930D37BF60BEA9A3843FFA9FF2287030064781F6CF94294
            D385C8C031C17E136CA629233905F35A74B43CE43E3DA895B558FCEF2DF0FE1E
            DDFF48505C3AD37CBD048B8092CF7332CD7BD421E2F93A8771688085CE7E8E67
            A357774916BDB333CC772C385E380228072E56E0FDC783A4D0AFD67FC8E500D4
            BCBA7A73AFA49494706E4272169181E3FABC3E31355E19EF4D60A1AF77FB1715
            9E0BDA15331A8EC182BC7DA6F9E21C7B88CC50AAEB954428A6860C7E8EB63CFA
            D9739C705C8639B3AE208FDD3472C13367BF0CF39D08A20294E7E20C3CAFE03C
            002D07F22B6EE10FB91D80FAC340A0815FCABC853F8C7EA19C84FED23CB4085B
            5E686A553C1DD0B927B127D76E752C84F6894495DAED8F8516AEECA89A564090
            48E9718C301584FD118599DB612CEAD4676698B3988D47B409C88FF150ADEC07
            9EB54D3B6F92F8FDC64CF39D0A72287004287D2E1515F85F33B3120E400DCA52
            3CB4BC925372C2E281C804CE008D5028B150A7C2A92141E67B99DF93DFD5CFAA
            F76D5B8EC7E6169DCAA6F080CC11C920947998C33838621B6498AF783C84C2CF
            7418E76E8B49DE398E01C839786FC331D097F012ACF282CD501D15C8555951C3
            EF8F639CFB4B3A0035DC945FB47608084D171619F4984FA98C8546658673E259
            3B3E15AE5DB312B147B0FD1B8EC1B51149C81191F2EA84C643EFE00CF3157342
            DB660FE70BE7F5F40CF37DAB45A9F7263C126C216B6F4ED73383ED6CB1D369AE
            D2798EE38F6A830300CC837A55BAFCAD99E90348096152924EC8BAE40BC76234
            EA0D8B58A44856F3081F4F04791BF56EDFB56F76227E68B1B571137265D253B1
            F12F6BFE80C26161F7D186239851C42B0A873EC64732CCD74B269B84BC4B33CC
            B709440538A2C141F6688634198F1D8BB4C501A821D903CF8488C02A893F809C
            507681DEC045955102C702354AC70654809C9068EC2EECF6C70327B169F82F57
            5916254DE73A8C83D3F3B60CF315E3C3B39A0D4AD36E762CA66B67982F7962F7
            38CC9733F79F6698AF1774436573902A2A402ED6CA6D73006AD82592B441C942
            5BCAC5BCE11C86E8C0F995E110FCA3F4A412C2EFD233139787025F6842C95DD8
            ED8F071DBB9AD6D32347FADD0C7345AEF9330EE3D0EC29952328FA83CAA69737
            1C8375039DFDDB33CC17D5C9A667F89FB5283BDE35E8B15347053C058DF8FD2D
            D25607A086F96D6331D49443CDA934C815E359A3B47549F58ADD537A620EA0FA
            B7ABC3382490B1E01D6EE9E47973C077C6E3E149B7B33332CC979E1A2F6D3846
            CEE43131313488F1D80D530E7A4C86F9A2D8BA73C331E807F3A60C734D099B61
            9EA15460785410ACDF7607A01742A5940E72D379B5B8EC0AB36C4EC780238547
            4A4F6C003C4A90081FBFDD8623C192CE82E7398CC3827A6B86F9DE5CBD571338
            A2F1482214CD20EA441D78D3E7281AF87B65982FAD88BFD6700C8E5DBB9C68DE
            0B3934AC034DA3875B77C901A841F294B0275ED0E299DEB38DB08BE21C87662A
            578F799D65EDDB65D1AC66AB86633C96B95AFA429CF05039238290236BD8AB31
            0BC77A1E6584A2391EF5F5B9125039AE68DAD1EF468B8AB4C302CFC1A67D7676
            EAA2035043C6249ACBEFB0B89B12B321E990A60FBD4E41EFCF252A12D8ED36FD
            3D6D16ECF705E69E028F124042FF9B66982BDFB3C31DC69911ECBA0CF31553B3
            8F35DFBD93C3B24486B9D271AF699E0F09D788D00D4BD749729FDEDE708CDDBB
            EC00F4527762E27C6494A302FD42630C1ABADC54BD5ED3F373FD8A03E1595BCE
            1146D3124FFEFD65B93FAC44B0F8EFD1700CCE46DF9A61AE1E8BC5B0EDC0BA0E
            ED6B4F74188770F44D89E74A94CBE3980B39E4AB13CF35171CBF342DC3FCCCB0
            3800350B5B6C5642C90752A36DEA36D735882270EE4B65025F701A25F125E4F7
            7CC73876A7F574991A07220F4F6B38A7652CD6A20F03ECA85FD3708CFF497A26
            C6237FE317C15E9B61AEA23FBC16558EF54E493C57D629127EE76F380E79641E
            A5AC6D80C5FFCB0DC73870D81C805EF04C79E0E00CAC5B7A32230259DE3803B7
            DB6CA7A0761090F35CA4C1D8DCA794C4B42DB761BA2001BC79C33172F500A0F2
            62BD8663E0A87C29C35C45FFE0D42FD7708C5CAA8E575ADCC1372157D5420E08
            FF37FDDC7F36CC0E402F944F907D4CF9CB8CD29311D38252C8454B4FC211FA47
            341552E19EFE5986B9E2D03DA9E118287D364DE412BE78E801703CF4B10C73F5
            7098392EFB5186B9E68004C0A609D1278E8A03D00BD180ED2C3E90DAD620424C
            CC63CA55A527E10867E24F6D38468EF02BF5C61EDFED613A7F1D163CCE91731D
            ED1C6ACDEBF84BB705F684E4DF990DC73877141D805E56B4E80C2036C4079A52
            A75E342397F4682EA8C4687AA689037B49E279AEE5F01E8F54D7FA9F86E3085F
            DE13EC9B0DC7A02A67B30C73F5E80A984BB7200794705ED8708C8B46DD01E885
            7216C2612FB158DBDA34E4297CA12148D373E8B680000B1516FFD7709C1C4991
            88A734551A5405403B210A7A74C33110255B2BC35CC91FD9B3E118DF09F6AE0C
            73CD818763FE173900E3C3039AA3822D2BDBC49A37A310CD207B3777DFEC54D0
            9AD4A31BDE82965ED381E858D3C4296AB89F9D789E627070A8FFD0700C1CD065
            32CC151DFFBD1B8E314C8DA86821FCD786635C2907A03F282FA4AC90DA591C82
            67949ED008922BD4980324756F7618874E69A9AB2248346CAADE47BDF94B12CF
            530CCE8C60D7361C03619DF932CCD5A3EC8DFE076FC830D71C78A8735E270760
            7AF00047D58E9ECD3429DAC01421480D52C22F2E3D092728BDBAC1619CB92CFD
            B93A21D36F351C03CD83D7259EA7189CA5ACF91112EBC7132D7D7F8E77073BB0
            E1184758733D8BB6E0F10CB9490E800F84623932A81D02CE4D87A964AD0DFCCE
            9A972CB505342A9AB67E46DA3487D0D58782EDDB700C22086FCC305731184436
            3D3A8D92E0F960E2B952C2F78386637094F58AC4F3CC854714F176390069A09A
            00D95A3235D7AB5E49DA509460FAFCDAA2CAE330E0F1E525B33EC7FD84D8D057
            1B8E7148B0B76498AB180C1C480FB96F363BA95B96536AF8F386630C531491CF
            FCAE8663DC2707201F846BC91D58AFC7700CE62D3DB18EF01B8B259BC3006D3C
            6F6B38C603169B9BA486D2AB6F341CE3FBC176C930573118ECDC3D92487324A3
            22E2F6D386639C106CEBC4F3CC053D6FEE6838C6DD7200CA42F20C2A856B54B6
            66F53AA3F4C45AC8307D795DBC778B21DCD478E400FCC49A8BB8087FBA940340
            04E9870DC718A663C4A5AD7913A65BE500B4131EEC38061C1BD48E01651F4D75
            BBBB4CAEDEE33960C7745FC33108DDE610AE42EBFDA086632039BB6D86B98AC1
            5825D8550DC760E7BF6086B9D2F6FD3B0DC7403AF7D519E69A0344EC66351CE3
            1F7200BA0567BE38014FAB0CE760F5EA676E8861EE7E7896C5E4CA6180C8CF03
            0EE3A027F0EFC4732579EFC70DC718A612CE6182C4E53F361C833E114FC930D7
            F759F3C657C3D49172D5607F6B38C635720086077209A80D45731D8760058B5A
            F3CB573F13329AABF4241B80ECE5734A4FC209AFE42B7EBFFF4C3C5792A64E68
            38068A65EABBD13E3CF4E429455B21C35C51016CDA4DF2101B9E6454A2C29736
            1CE30A3900A3038B0E8A5D7C5997AB8C9F7110700E96A8FEFB42A5273A0174CF
            5BA7F4241CC101681AB121FAD3540D6C2A3C7689E43B2C9E789E6270D06668DA
            4D329744B78714F001C1DE9F61AE39F05071FCB31C003116C2D3380338054B56
            3FF3BA54F5736D3CD04966A35B5C8EA3872B82AD56FAC37184049EA51B8EF1BC
            60E7259EA7876601E819D13EF6B628B1DB845CD53954923495F1FDACC3F5B605
            64D1CF6E38C68572008407440D7004169DE0156BDA7694BAF9A60B669B20A2D1
            B4BB21F2BA27269E27C746C80D376D5CC48EA5692441F8425D7DD33371D4F99A
            76E9EB0774409A3A1A885AED9F61AE397869B0631B8E71A61C00910B846B9AE4
            20F0EFC973485D6E948B932DF69568020FEF5F6498AB47B48270F3E119E62AFA
            E7226BDEA489F6BA4D35FAFB818E944D93805113FC5186B9E680B2DA431B8EF1
            1B39002217288535AD5B27927077E90B71025193D7371CE3C3C1F6CB30D7D3AD
            79163F3BAF0F6598ABE80F9EFD7C279BE6FC700F3755E8EB078E009B366163D7
            7C7C86B9E6600F6B1ECDF8A11C00910B0447966A38C6CAD6BC03565B405EF703
            0DC7F8B6C52629A94108A8691FF5332DB6D516ED80C5F40A87715033BD28F15C
            59A7D01B68DA759084D68B13CF35175F08F6B18663EC270740E4E2EF16CB139B
            4007C60B4A5F8813844EF76938462E75C4F704FB66C33178809313E251FE289A
            F34E8B0E6413F85D12D54BDD08C82B11952AA7A6CA876D0151A477341CE36372
            00442E3CCE1B872984E7216D7AA5350F8BF6C3E6C14E7518071D870B33CC574C
            CD2FAD796B5CEAD09B26B2F6035D56CF6A38063944F43E48DD3E3B17B4366EAA
            6AB8AB1C00910B1690CD1B8EF1766BDE12B42D90C1DFD49979C86243A0FF269E
            2BCD8B6EB5E695007B07FB4CE2B98AA97982C5AA9AA60A7E2844BE39C37C77B2
            D852BA09442057C930D75C9C63B10CB8093BC80110B938D29AB7F3E5FC9F074E
            D3DD401B58C97CF2191073BA21C37CFF62517ABA09E707DB30C35CC5E4A0CAE8
            71164E22DAD732CC97FAFD4F361CE394605B65986B6A48DAA4ECF28B0E636D2E
            0740E4C22391AC86D0E3F72CEE0A9A76D52B05BBB07BAD794B5FA22AA76798EF
            7783EDD6700C22159413DE9A61BE62623E653E91985C39391E1A00075B6C6CD5
            55D0D1A0A53655175E5D409F210740E4C223916C2C241F1D63D11938A5F4054E
            038471D66D38462E71138FA640C07DD0B4BDB068064D64566D38068E37470839
            CED43D128873E9157842CEC236161D97A69A2163A119D9C27200442E2801FB7D
            C2F1890AE0E5D37BBE2B510122183B351C8364AED76498EB8C60D73A8C334C4D
            9DBA8887842CE46AADCB6E17ED8FA6F9272CA44D95F372C16E9F45FF75E6B7DB
            1FCB63DF4339002217A8F8DD126C91C4EF43621CFDE7890A9078D866E5C08F07
            FB7CC33158949BEE8EFA85C643CF7418672D8B3905223F1EE563F0AE6AACD478
            392CE4DCCCCA30DFE9C242CF82CFC29FA3B9D2637D11E400889C78688F0F0242
            278758AC1CB8ADF4C58F034991473A8C83C0D22D19E68B6EC15E0EE32082F4C1
            0CF3158F07211DDA477B7466E408E1AA0C73E63E69AA7649AE0D1A146DDC0CE4
            D8ED8FC763A2487200444E3C4ADFA603E75DBFB21815F0D84D78C16EDAA39DEF
            CB821D9761BE84EECF7718870732D50B5D39AA1916508D3CD0619C4B2C5612E4
            C0A37AE85C8B9184B6C0424F321F0B7F536D94E94005C863B9477200446EE861
            9D23C435112440D110A40D51019A23A1C73E7FC371F6B63CF5F53C2FAE0BB6BC
            C3587487DC37C39C45646E8BC251331CC6FA68B02F659833F71BCA7D4B361C87
            E4E3DD33CC772AEADD3E8B7FD31E0C4DD8D1E286480E80C8CE2B2CF6102F0D15
            047554A0A4AEC0CC609B361CE3A4602FCE345F1EA6EF711807695772171ECE34
            EF51874E781E225AAC17F4E4F048089D0A8E19FEE6300E9DF37E9261BEE341CE
            53BDDB6F5AF1E3016DC8893A3C261E26074094808577FBD293E8A16454E073C1
            3ED1700C9C19D4FAEECF305F76317F701AEB7DC1BE9161CEA3CE13835D6ECD4B
            FF2067389DBAF7EF398CB39AF9343E1A84B6ECF67BA17703EA81FFFBFECA0110
            2520698D73A8A63DE6BDA9A30294139E99E93DD9B99FE0304ECE32278FBE0E80
            B3F574532E406A90D03ED8692C54E83CF208FAC1E3FC9F7B0BE738B55C36B0DB
            A7AC97857F9D0CEF37286C363ED5FB177200442968233A33D882A527320124E7
            A17EC783F38184EFC343E30E8BBBB42620AEE3119AEF07CAC8BC4AC0BE126CCF
            4CF31E457836B3FB5DC2612C9237C9FFB83BC3BCC98FC1415CB4E13894046F9B
            78AE4864D3DA9B0AA7B63ECF7E61B1D2E071EBBD1C005112BAFBD1D5AA69125C
            4A38AB466DEFF084EFE1A10898530F00A78572328F871D5117764B1E67BD624E
            08A1EFE23456CE643AF262663A8C4319E15713CD91EFC1D72DE6183475E05342
            8510A24D73B46D9603204AC399145E7AD3CE6429E13B42E8ACA968CF441C603E
            0FD69C679D5E82324012260FFC1C61DA5182C64B94BD3EC1612C7E37DC5F5766
            9A3B55061E9121228D1725981FC7972CAC6D48EC9B8CEF077BA7C5F3FF399003
            20DAC08A166F546FBD6B6FE844E8A1873F16FAB2FFD2619C94BB9DB1A0ACC6AE
            7D6EA7F17080BC7B458C32286FA2D9E055AFCF62F7B28CF34764A869FB5ED624
            8E3EBCFB15B0DB9F196CA38C9FC7A090FBF0FE60874EF63FC901106D817BF16D
            1677DA1E75E629E04B8578CFCDCEE352E74C48BD691891DD5ECE871295133B3B
            8D759FC5CCE95C3BCC618744BD773B8E4784E68C4C73F7AA3449D52783EA95AF
            67FA2C06E591603FB52833FECFA9FE673900A26DCC63F14C0DEFB569FFF914A4
            EA2AC6C3756387717050729DA7B343E3C8C1EBFC93FE00B498CD51CE38CC5062
            FB2BC7F14EB4A8E2990B12433FEC30CE5B2C4A817BC29A497462E58C9F473F90
            984973313A83F6ADD1200740B49917582CA92144DE964441EAA95338267B984F
            5BDF394A7D12F3338BD9C55E1C62F1C12DA6070B1367DE4DB3E76B581F9080F6
            D27E980AD6A46BACB96221F35ECEFAD8050F08CFA492C26163E19887444FB2FC
            FF3DE83F960320BA000F3342797420CBA5413E19293A8B91C1FF77877198178B
            40AE843AE67D99C546335EE4EA34376CA0314F24C9B306FDD7D6BC167F103636
            9FA3061C960D12CC8F44E08F67FC3CC603F970AA922853FE539381E40088AE51
            2B6C21B851AAE6965C851F26181771240F07E785E65342D52F5FB4A80FEF0549
            5B2C3ABFCD780D5D87A33384A03C1369394FC699B83CE3759064FB4687715225
            C4B2E37E4EC6CFA317223BECF689BADDE731A01C00D1554A4605F802EE9460DC
            BD837DDA619C432C6F181DA953F20E96751C13F1A5ADAC5DDD1BDB0ACF71B2BD
            3D16CE5E68D6F4918CD7C1779A90FD020DC721FA4565D18DCEF35BCCA23851CE
            9AFF7AB74F44EC62EFC1E5008861207754E0168B75C0DEFDC5D96D350AE955B0
            3B58C69C76097DC2E2E35D2279BB4527C0E3331966BC74247AB9DE62AE4BCE7B
            08254B8F52D0DF07DB2CC1FC884A1D99E9B3A877FB64F40F7CB6DF2F7200C430
            B1B8C5850867207505014EC71F138C4B02D44A0EE350457140E2CFA0179E25A7
            5A3C7EF084E70A19E81764BC96AE80C0CFD72C8D3ADF7696B76B27F7CF25C1D6
            74180B81AA8312CC9131774DF81950664C263F0BFFA509DFE77FC80110C34AEA
            A8C0672C86ECBDF1E80E0837584C067C24C11C2782B02B0FF1459CC7250C8A08
            4D9BB2AF4BC3993F61FFD726189B857FBBCCD7B3B545B1A1A670BF13FDBADD79
            7E385B3756637B9365B73F1E7200C4B0932A5780F3B81432A02B588C02789C33
            D28AF4E709E638195E7DE7C7F290454DFB527DDDDB043917D4F9A7A8CDE7788B
            EFC9BF325F13D1A3CD1DC62111729B04F34356F95CC7F1A8DBA7742FC9D97EBF
            C80110A384B7AEC08C60D7259827ED815FEC30CE9F2D3A29DEB90A53718CA579
            08731D94617DBAC035B505A23A34D04AD16E96CF949DF88999AF0987833C8FFF
            7318EB0D1677D2DE7855BA9C67B17C0F95C2945D46FB420E801845BCA43C53E9
            D77B261B9144774A82394E060992E447A4089702E581441ABCC3BC6D07C795F6
            D45E223F634188EA4305AE8B2895C751066DB591114FA1244929E46A0DC720A1
            92DE040F361CC70D39006214E1AC1AB9CCA63B0E044B364D303F7AA19385EDB1
            80E69671AD797EB0D32D9E55A78036CD6FACDE63D8A1B10F8BB3A7B6FF5810CE
            2142F670E66B235997BC118F8E854874EF95608E2CFC1E5A0884FC53E46C4C1B
            1E80886E34FDF0F16A6E2B7D31420C0021C7A66154EA8D67584CB8F3661FF379
            98E1E0D372F9FC04739C8ADD2C863B53C1E74F163C47025993A732C2D9339F61
            4AAD8B9B2C8ADB78D7CDF703B90CDB3B8CC33AC6F1488A23392FF53F12927F96
            607ED3060780B0C9E20DC7C9D98044080F5834F6761807A1947D13CC0F895D9A
            8E78EC8C387764475EE2DC9CECE65D12BF07E2319CCFA668D55C0A9EC97B5BDC
            F5A7149E211C4DE9E67905AE712D8B09701EF73847661E8EC47878B426A63A81
            AE9F77259AE3B4C001407FFC690DC7C9D92A52080FD8517964DF12497876A239
            12BE7F91D358AF0E7654A2794E06E16B921A37CBF05E6480E30864A9A14E048B
            3D2A8E44809E92F8BD700869E4F48B42D7EA992CBA994501206FBCB2FF4F36BF
            EFB21B3800D420367D80A5D25D1622255EA23B9C63A6D04BDFCCFCCEB8B956CE
            32739FF102BA00A759D466480DC7022C684478AE2A70ADD3656E8B390D1CFB3C
            3DD37BA237F18542D7BB85F925A7D2467AAD44F3FC46B0F73A8C83CAE1B712CD
            71DAE00078EC32F0E45E51FA628418109CD60F388CB39FF9F42F1F0F226B1B3B
            8D95AA6AA11FC8133A33D83332BDDFA3163BD9F1006FB380105D14A968E02869
            C58CEFFB25F36DE0340824B95225E2B568A76ACEC5EF8664D327351C87480BFA
            1E25722C2605078087D7071B8E433D23BD97EF287D41420C004757331DC62101
            96FBFFA10473440FE004A7B198276799772798673FF01064315E3EF3FBB2D890
            48C739711B9E513C7749CC64C78F4855D31CAC41A104D6C3F19D2E5E9AFF8060
            1147D8296AEA11D2F2D014B8D0CA75109C146E44CE803C3213F7B098912B4457
            E0BC9504B2251DC6DAD16246730AD0C1F7EA6D5EFAE14FA636E7A11E472F83C2
            F107114FBAABE154E5740678D6AE1D6C5B8B0B7FD3A4B2E9F26D8B0B70292125
            22415758F35D754DCAA896973A2191962F259A6323B82909C95DE13016678CAB
            5B9A5D9010A9A0BE7A0F87715226F9A0CBFE6BA7B1382327F251322C4EDB6016
            628FC62F4D3E0722039C43CFB4980BE55DCA4C75D40B7B2C7552DF5470E485D0
            4F4915459ADD78B5D2A6E48FF52BC59A838376A535D70AA13C7186B530FC6FD5
            C55182C18DEF1186DA33D8574A5F941003C022E49135CE82C2C3E8EA0473E47B
            4AC5C2DA4EE351B28B0642494532768064ED6F58700E63E121CDE77C79F5F375
            D52BA55B34247AB4FA997EF50B55C67373618BEA87FCFE59F457AD6CA1D21754
            C1BDC9C25F3A428B20D5F18EE3913BF1A34473651DF3C8EB2925C4D517B577C3
            87B8B3C378F75ACC34FE47E90B136200BC42EC842253B466058E183CCBB5D036
            F7103769025D1AD1447F69E1790C33EC8EDF6CE54AFD6A7086C8D6F74A74C489
            C5797F34D15C11F75ACC612C8ED80F4F3047176A07802FE0B14E6392B5CCB9C9
            7F4A5F9C107DF24E8B67A34DC10126C12D45921DDF55EA919FEB341E0F4E1293
            FE9460AE8340049216C81F359F6630623674F6C3714C511F3F2894C0BDCB713C
            24755339355E498A3C0790F32EDEF46722EA2F1C7ADD64537A65A35283FBD9D2
            1727449FE0E9930CE8D1213065322C75F4442B3C94D3000DF6F52DAA9495E6E5
            165BFDA66A74336A90794EF3A014D2B88342874136985E0E1E47761C61FD37C1
            5CF96E9113E7A1C540AB5F4FA7C79DDE5F086532BB398DCB2F060F2D5556B410
            DE5009F33A87716832C4C32355040CB9DB373A8E97AA81CA7440508952BD5C5A
            01C308097E24FBF13B4D111E1F147223684BED51695343C4DA3397A0171CD1DF
            3A8D4584EDC244F374A1D701A03C07CF672EA7B129B97999E56F452AC474A06D
            EE494E63A56CFA41063DE79F5E09662C1894A61D9368BE8342821D2553846175
            24301884FC770DF69BD213A9E0F7779CF926C11D1DEC9509E74C75CC0B1CC6B9
            CCCA56B9F4C5D82F98D72EA8863310BCB5734A5FA8105340E88F52568F2425BE
            FC64ECA70851C2C7CC57C295CCF6F5AAEB6F0B3C840FB5B831115343B495C641
            B7969E480F24997EDE71BCFB2D468966259AEF66E627BD4DD5C5FE89E6E9C658
            07803A7ECE57BCCE18815F1A1E9BD7EE4A885420C7FA65A7B15E657EB5FB6321
            67878C6A4FCD78C2B4A8D3B52961891E02745A7CBBF93E93860972574862F50A
            5B7B81D63F25709E9D0C29CBDB2FE19C4FA9E6DD145A53B391B83DE15C5D182F
            C44622CE1B9CDF87529437592CF911A2AD900C78BDC5BAEEA6202CB37EC2B9E2
            601CE93CE641C1DE9170CED385E8C401E6139A1D163862A572E533D6B216B316
            173FEEFF273B8EC9C694A675A9F21AA8AEF16A899CB21CD895F11C009235FE6A
            7E528D359C3512B6FC949555A2126232BC1A04010DB2529EADFFC6FC9B70D18A
            F69084736E02095A34F799517A2285F99DC57B3485E85453D076A014DCB34536
            EB050DB1CE4E386FAA143CF42848FE2589F5EF09E7EAC644493684DC0E4EF49E
            2471204C714FE98B17621CD8BDF060F54886A5CC6E5D4B970B408D31F9069ECD
            642809A4477B5B8FEC481224D18D70F0B2A52793191656B2FB3DFAD3A780631A
            A252DB398FCB5AB46BC2796F627E5A095CFFF609E7EACAFF4DF2F77C205E6D48
            C742A9149D96BC422E4278F2738B65AC1E50B27758C2B92287FA03E73171CEE9
            177071C27937853C087E47F4B4F7CC85681B388F64D25319917207EC01D199F7
            3A8F7993C56CFA948D9BBC32FFAD1AA73349EF9395D9A068C639CE1289DE9BB3
            1CCEAFF631A9068A76812CF0054E6391598F3CF6C389E6CA7798F0E5D6CEE392
            5CF67C6B8790CC64CC6D51F0060D938D6D784A07E9D380E348D2DBDF4A4FA60F
            DE6FFE0258383FB4C34E594AEE59F7CF86F67909E7EACE545F962D2DB6CDF4CC
            E41C0B42091C395C52FAC310A287991677C11EB02B3A30E15CC9DB218B7F69E7
            71390AC109685369D964D080E7AD95A5DAB8A4864D1789D8F4A1F7EE4E980A92
            C629D9F4AED4A021CF9E09E7CDBA8614F65A4EE3E1881E9170BEEEF4E32D7BD7
            728E07E78E5FA9DEA7648732216A3C77069403B138A50C636E53CDD77B074C78
            945DD8FD09E7EECDBC16859D388B2649B2EDCE00259D47595CF8DB98D8371954
            A3A0C9EF252057C3C690707A4A996A2A5EBEE33416913EBEE39D8A66F7F3B0E0
            FF4120C8EB4C7432B8F93F68EDAB6915A307F73DBBB1759DC62302E07D3E3A16
            EF862B35E403E160DC9778FE296097471403B5C317067B96A58D68F60375E284
            B58FAFECFAC2F3992E28FC5189328FF3B834D5A28A20A53344C9EF95E6E71CBE
            2DD80F13CE3709FDEE16386743D4E46599E6759AC532171D0B889270AE7E9CD3
            58EC0C70262E4D385F76BE248AAD97606C129B28934AD1E93027683CB0B3DCC8
            A263408259CA0801E7D848AC5FD8632457A6CA09C9058B3F510B8F065A63A14A
            ECC789E7FFF560EF731AEB2A8B227A6DE8BD301083840B29BF41D969A34C73E3
            C3C4A3A255E88D993F17216AD8FD6EE234D6C9C15E9478BE2B598C5C789606D6
            B078F1E04F79945102046B56AB8C8A027229700A28B35CB2FA79BC10378BF83D
            95DD69F1CC7E96C570706D2C0EF796BE406708FB5329E3BDF307A2CD3B259E3F
            75FA38E2733B8D97B2357152063D2F246CC2432CA5C2D958C809E09C866A81AE
            242389E10187F74CC7F1C8124E5DFE4AFE02A1D91419F1EC5E716246F9BBC866
            08719A36C926E782B2563666DE67FE40222BDFB7D4474D3F0AB6B3D3587C1F88
            B8A5D2FA48CA741E1084D010F3D93CF35CB92938E32474F3AFCCEF2D461B94D7
            BC8EBFD839BD3EC39C51DCFC4CA2B1111FE278E4860CD721DA03A57E34B849D1
            9781673A72BCA9F32188E61051F68A5E901B736CE2392763BA3B043E3CCE685E
            5360CE84DD08B75031706581F717A307654278FA1E0F3E1E3ECB679833DF6D4A
            C93CBB7BF642B89B50B0677444B4139226A9F14F95C44A949704CD1CC2702CD8
            5EF2DCE4DBE43A124F4293102137054D0FDE5968EEE40850734944E0FC427310
            A383A73A20E7F3391AB890A03533D873128D4F932F343C522A1D8AB2A0EDCFB9
            BC77CF891A8E523856F869A6EBF1ECF889D33233D3BC93E0714648D911DE618A
            84907E41B50D194A7A62773DBB56B41392C3C8E6F688022C6AF97A61A0974F06
            FF8A89C6E701FE598BC70D6AF2355C70CF90E9EFD9D8672C24797F2AE3355166
            EED15278A64507A0D3782509514EC3E25BBA3907E748DFB7A88D3EABF05CC470
            B1A1F9346161D74C1259CEA421B2DB11F4F1EEF0D90BC77228F0754930484C0C
            899EECFC3D5BFA8E85358363E49C8E23DD2E3DEAF5A9F06053D0C9E4BF1ACF2C
            614A677E69E91A080D02BF94532D3A03242C2A2A209A4288D223790F0198AD0A
            CC9FDA772A7852D46DD75C6E31E740FA1DDD8535E1A316A33A2905934EB79858
            9BBB926286C566741EA46EF79D1CEF32214A433E66B14397578D65532857C293
            E5017E61E9C9884E423DF82CF339E6DADD62EE4C09280FA45D69CAEF26095D9C
            B3A27CA823816EC1268E12B997247E9FB3AAF7F877A1EB44FF7F1D877172E87A
            242555E7ACB52DEA5AAF5DFA02C74067B3C32D1E115C557A32A233B01BFAA4C3
            3884C7A9002829A4934ABB7D2C2759547453C96E3760213BC4A2B39B923F5A6C
            327767C16BA573E4779DC6A242E82F05AFA511295B67126AA487F57B13BFCF74
            606742E2E091955D537A42A2B520AF8BE3B894C35807596C40521AB2AE0FB134
            F5DCBDD0CB1D27E0E4D2172C2664218B59F15473A57E4EB3F86F61792A602683
            CA06342C3CD432BF1DECDD85AF67DAE45898397BE4436A5B34A0176ECCDA19E8
            42EF6D910F164B0F5D729C4EBE036DD92D900C75B0A56F8CC375F3F97DD8465B
            3DB08D20E684CA6AAA0A915EC80B413CEEF6D2175D81A0D11E0EE32050B79C75
            B44746AE9D39E146BC2442A98B94BEE829201A40A216EA6FF43E5002E16843A4
            68038771484ADDB2F4C58C81A446FAB8A73E0E008E3DF6B29898ABDC80B2A086
            47E9766ACDFD1A92432999BBA5F485F730C362B7410F071885C4034A5FD074C8
            1D9A7FAAC51B6F87D217DE2784AA700270060863DE5C7A42222BE8F69FE334D6
            2B2D56A4B48D948D5DC683CF9370B32A05F283A3C711149A0D294B427BA13115
            5D24DBB4F8D7D076FEE50EE3904FF64CEB604960A9B379349F3977DAB4F40730
            207574003BC186AFCB97783C248C7AC85D9343B0B2C596C06DE4C516553517CA
            F47EA8785225F045D3B1402E283D65F3B546C6F79C196C5BCB277A35287C2627
            398D4549A357EBF06C944ECEDBCE6297BF6796FE20A601E54E94B3CCB4D83296
            50B18E0B8607A255D40B7B94CCED19EC2BA52F680AE8684653138F64C77EC181
            46CA9BF3D84E9EA17600CADD50DBDB26F3FB12ED4213E2C1D21FC024B0FED1D8
            6A3587B1D8106E5DFA82A6F3019486B0D4DB2CEA07AC507A320D40D002A5B833
            2C3A05680E4815ADBBF0D0FC84C338DC172409952CFDEB17A214C75B5438CB09
            9F0D0E12FA08FACEF8C04E7FEF60AFB6FCCF799CBA0F597B235EBD909B76A0C3
            38E4B5B091ED5483BA36380035ECB4F0183F1E6CD5D29371809B9F8A828B7A4C
            51826EE059FA47A6FDAEA52F6800907EE53860B302EF8D6600A5C348B5EA786D
            7AAC6BB1E282A3ABD4659E63E19947429CC7829A0B8EBDE8D0B9A8C358F4A379
            5FE90B1A8436390035DCB478AD24AA788466DA04CA57B495ED750AC890555674
            BBF0D20B876759F712DE70C6D98DEF56E8FD390E40918E85E4EFA53F8C0EC073
            9C3C0E76DD5B149A0309D3541574EE1CDC62C4C263E1C66925DAD7D69C873968
            A30350832340E634BF9836F4174805D9B11754861E016752EC3EE5149403C7CC
            A3031AC7415D4B74ED85F0288963A564BDC9AA262F819D156594FA4E3C9EC582
            BDC1A2A3B666C179A06DC1B3FAEAD21FC834F1ECF489F05D6722206D76007A21
            AC45F9CA9B82CD577A3219A0631C3B1F9C01220417553F9394A687605A7036CF
            701A6B7B8BE2525D8652489A7C2D57781E7C0FD02C40C6F8BAD21F4A4178666F
            146C178BF757CAE64EFDC0BD410ED77D85E7D11422171E497C9D2A09EC8A0350
            43BBE17759BCE1962E3D9902101AFDAB458FFBF29ED77F949ED810C102B3A3C3
            38488D3ECD62C95BD7798AC5DE1EA99BC4F4CB45D57CF85D8D4AAF0192FAD04F
            41BC297792E678B049A1BA85E8CC306C4A58FCBD8E2F388EF12A2F4C4AD71C80
            1A42920838BCDDE2879D3BD9A56DE018A051408460D698574C99D5FDC12E97CF
            CB43198FAA967D4A5F90237CC7E8F2879A675B3A7D92748626C7511685BABCDA
            BCB6013EE3E75B5C98C8895AA5F4847A20B9F9B516F3998605EE6F8E013C9C2B
            84E33C048692D35507A017A202E8B5734430A3F4645A0A9DB7AEE9319AB4FCB3
            FA999BBE545BCEB68130CD471DC6617744496B1BD5CF9A825E00ADB59F517A22
            E3C0B1592DD4759A75A3F4B217AA9FC81921D2826C741B65D39172FE80753FE4
            3F1EB4EAF690F4ED4C49E030380035787078CC380378A76DFCF2B415C43A7008
            700CEE9CE0675E299719D632464AFFAE0FB6A4C35864B0BFB5F40525648160FB
            5A9E0E72D3853358926AD1E6B8B8328ECCDA72FF2E6CB195EC8616CFF4699AE6
            71EFA582EF3F79075DCCF2EF177E273CE33CD60E92673D9A0D25A5AD5FDEA690
            18F30A8B65291C11E4D2391F05E8E6754B653755AFECB42803BABB7A1DFB73C9
            DEDFFDE259FAC72EF98FA52F2803EC56D911B6293C3D198F58CC99F993C5D24C
            B2D6C9D5E0A17F5BA2F72442B95265ECF059F4D7AEFEDC95E7EF6116ABB1BA16
            51990E64F07BB4F7E5B9C79162ABA3AB5DB9019B80B0C9AB2AA31DA59C81323C
            50195F8CFBAB9FEFAE7E7EA8FA7B42670F56FFCD7AFEEE211B3F8FE1011B5F6A
            94F3D3B1BAF638855490D0FDABF6F0EB7EE08880B003F3C8743FDBE28E6E5420
            1A405E000B448EAE82A9E05EAA9D018C5A6E1EDEF5FDC9BDFAA8CD962CA6048F
            E7677D5FF167BAEC3DB9327E9E61DDAE5AE28890284F2712DA9C20748F93E8B1
            36F2D97DB7F4054DC6283800BDF025A50104091AD4ADE66A7E22460714D87E59
            7A12056057FB6D8B8E94E836444ABE6AD1B11BC504621C9EAD1CC6C191409FA1
            B55512A3E600F4B2A0C5641BBA38D1AE32671314319C704E3AC3E2037414E179
            F2668B72BEFA3E7513CEF839BBFE5BE98914840DE26F9DC62299F3D4D2173411
            A3EC00F4C2E7C0B9EDCB2AE3E7512F2D1483F3298B4D84461D92A9F6B2982D5E
            5AA846F407FA222CFC27949E480BE0D98FA0CFD31CC6221AE8D1523C097200C6
            876C5C9207F1DED0D67E6AE90989D6C339F18AC16E2E3D9116414EC5E72DCAD5
            3EB1F464C4B890F740DF1554168741B4CA0B9CA1FD1DC621B704D1BA56F60790
            03D01F2486D4CEC06616730984E80565BA37959E444B415C057D051C81B68808
            8D3AB75A3CAA216FE3C186630D233CE349065DD0612C9E0B3F297D41E3210760
            70D8C9D09B60E3CAC8F85EA2F4A444719E13ECC2D293683988237DD0623DB98E
            06CA40D9EE772C26F9B57257DA22C8E0F7E888C9E7FDAED217331E72007CA06D
            318E000E0159D01E6747A23B9C67B1698EE80F6AE3695DBBABF9ECB0C4D4A079
            C0A28FD6C543A527D311E8BF70A9355F27E95DB17EE98B190F390069A0AE7C03
            8B4E010985A87D3DA5F4A44432109CFA59E94974102267ECB0E8E9B162E9C90C
            294822236F8B3E7D273AD4B50C32F8376F38067A268B371C23097200F2C0E78C
            0A186162FACC7384B08E454741741B92FE086DB74562B68B9075FD228B470394
            60294FA0192C3838A40759543C14D30701B9A62DBD71BCE6B6163A607200CAC1
            678F1C68AF43F02C53C541D73836D836A52731442C136C678B51011DA5F50F62
            336704FB41B0236CB69AA6680691A9590EE3A03E7A6FE98B198B1C80F641A868
            8DCAD6AC5ED10FD711423BE141FBC260E7979EC890415480CF75078B7D3D9629
            3DA19642932376FBBFB0D8CC4AF84295C43B1B8E41DB6A24E8150110D386F3D2
            D52D1E25D4464B5676490A999685CC6A3A51FEBDF44486149C81E706DBCEA284
            B747CFF6FFDFDE99C75A561471B844858160181605155C089B8008FA8710094B
            4450104551A30664135C405609665C181744513695684065407089A383100544
            0502685412644460DC405945869DA84C50FB4B9FE75C9EF7BD7797EE53DDE7FE
            BEA4F22ECCBCBEDD77CE3D5DA7BAEA57B5C226F2AB603F087691C576DE220FC7
            073B25C13834502BF2014E0E40FDD08065AAD3183F0959BDA0E7A79E9CDA81DE
            DF3801CBBD2732011015C319E0E88524DBAE3BC05C5324F3A1514F32DFBDDE13
            9A0068294F6425C51E4974707BEF05F5430E40F721F484221BA55738031B4F33
            9C849ABBB895044F6684AD27B1818A177423E4E63AA5C9C1EBDA9B7CB1E1FF22
            D8B516B3D0692D5D5CF8B8C3EC64D1D95A2DD17854611CEDBDA87EC80110081B
            91788823C031C306CD4F6CFDC6D6EBF97F627648C042FB5B376C1F706649AAC5
            19E0D8608BC652DDCC534362D88DC16EB0B8D1A32941239E623BC8751C8E5971
            BC5296EDBD2DD877BD17D60F39006218B8B9F63A07CFE9F96F5E53D648B6EB9A
            8DD114667EF37A55EFC9B7C817831DE93D09F13F70725F64F1E68E68170EC156
            CDFFE3DACD7D1FA444F4AE607FB1785484B1C9737E4FDE8836FB322052CAE69F
            529302078F87AA22A3827200445BE000A0FA8667BD668FF53A0DF39ABFCBD3DA
            1A3DBFBB7ACF9F59334EAF43C1EF4F359BE1C9FBE19E3F43EEF4C9E6355FC229
            15345AF63ED6BC26D967DDC4EB3D39D882563E59310E5C37D3235E530E6DEF35
            C1F5383D8A40EE01D7DA238D3DDCD8433D3F69B6738F69932F1DFEDD29A3DC2C
            F1B8E7063BD87B713321074088B8519F9461DC8F641A3735DC07089B536ECA46
            F7A0C5F23285A2C5A010E943EE96C80ACE350E11898B777B4F6C0070F4AEB478
            FDA784078F6D82DDECBDC099900320448C20DC166C9D0C6393FC73A6F7026780
            BC0F9A94EC6F3149743A37596C897A81A955ACE80F95472758EC7837BDC113CE
            230DB268AAF32D2BB3EB2011C89F581EADFEA29FFE410E80101136C1F3338CCB
            4D10BDFB73BC17D8C32EC13E10EC8DB6F2E86436700470647EEA3D71510CE4F7
            10393BC6064BB0BCDFE27780CE7877784FBE81A3C4CB2D36704B0DDA2028BB16
            5DB2290740889550F7FB8E0CE392977048B0458E6B23B44FD32236FE51439D4B
            2CE64B48F0687241940967991C9751344688242160F4A560573BAE83CDFF621B
            BFD14F3F70FAF70A76A9E3FA06420E80102B211C4816F0D619C6C60938C2E213
            509B10A245CA140724C511074994DCBC3F63F1A94E4C0EBB59DCF85385CB297F
            E45ABAD0DAED5DC0911F3D3C76CC34FE27829DD8E27A46460E80104F054D0444
            5836CA30364F063C419FDAC23AB8B9518A88746E0EA1272A28CE0AF6698B095F
            A2BBD0DA9C7FE7DD328D4FC5C479C14EB7348D7766832A249ECC5F99697CA288
            FB5925C9B3720084F87FE8CC4849D0B3328DFFD1609FCA302E614DC2B384F9B7
            CC34F7E970D6C953E1D95668ADB318198E8A7892A5256E1B7B0559F384E5D1D1
            B832C3F894FAA1F0B74DA6F95F6131F4BF22D3F8C9910320447F90F4BDCCF209
            18D164E484446321E97C58B0432D4F25C320701C4044E00C8BF5EFA25E70808F
            B59833B28AD31C104BA213DF57833D9E603CC478C8F6DF2AD37C4994458EBAAA
            6B5F0E8010337390C5FEEAB9BE2794479117F0E408BFCB9C5E63F1697F4FF3BB
            514F871B204F709CEDDEE73D19311438BD1F0AB6BBF7447A409382EF20CEC06D
            238E41D754C2FE2FCE3447AA1AE8415183E6C153900320C4EC2CB4BC093D9758
            AC3C18F4298763096AAE711CB670FD6466879A6FCE43D14058EA3D19312394F0
            D1F98E32CF6DBD27330B24D1D20911E79272D441CFD829F1A375726AA5CF2970
            7879F2BFC9FB031A05390042CC0D379D23328E4F17C1BD6DF627E64D9B391C68
            318BB926B861F31992792D41A13240F8E9DD162B4436F09ECC90A0AC4784E91B
            B652CEBB1F6F69FECEBC41061D019CF63D825DE7FD818C8A1C0021E686EF09E1
            FAC332BE07E14D42F9B74E7BDF5737EF4B22D620A23D2583280AD9DE08C2484B
            A07D3826A2EE9DEB691F8BBD0C6A86EA936F5BCC3BB965DA9F1D15EC34CB7734
            46832784B42EF3FE10C6410E801083C1E68B24EEDB33BE0789749410DDD0BC0F
            4FFC9B7A2F3C038473D189477911519847BD27D471D0B57867B003ACBFE473ED
            703D71C64F5400E961AA6C8ECAF87E6CFE38E43FF45EF8B8C8011062707002D0
            347FABF7443A04B9026467D32F7DB1A9943015B4B6DDD7E2B59A43EA76522161
            97EA88EF784F2405720084180E92A6482ADAC37B221D0441981F59FC7C79A293
            C0D07050E2F6068BE17DC47B747F4F0B9186032DE61574025D20420C0FBAFA64
            EFE7D0111711C2AC5759FC9C115859E63DA10221B98D0C749C51CEA337F19E50
            8761F37FAF95D5D46B6CE40008311AB43E2564BDA7F74426046AAD7104382E20
            3A5095E04A4238CF7F9D450D08E49E571F6F38310084FDD104E9CC93FF147200
            84181D5402A975DFD77B2213067903240FA2CFF07BEFC9B404DA0FD4EA6FE73D
            910983481467FE8BBD2792033900428C078D761659BC49D40CC22AF43F405C68
            7DEFC90C080983F4A33FDB7B2219996FB1FA642FEF890CC1CF2D36D3CAD150AB
            4D7034D112A83EDB7F26E40008313E7C8FBE6079C58272C14D8E0CFCCF05FBAD
            C58642AC0349D8F9DE931B001C177A207CCD7B221920BC7FB9C573FE1AE0FAF9
            A4C5EB89FA7B9C163A52A26551DB5E83C80F9D34AFF09E484E6AFB4711A254F8
            2E213C72B4F74406E4CF16F5D5D938FB9DA7D35488D6C5DCC0D7F09EEC1CA02E
            888CEDEFBC279218046E72D6B3A702119E8F05FB9EF597E87D9945A79228590D
            390B7C1F5E6F152BFC0D8A1C0021D2C2A6F9592BF3BBC5CD9924BA2959DE7F0F
            F03BCF0DF6618B4FD9B93A23A6009DF8BDBD2791103A3CB2B196FC99DF1EECE3
            1693E3066968851EFF94FCF00BBD273F03249B92D85BA5B6FFB094789312A276
            50F15B645133A004D04B47750FA5B45B461C834E6A0B2D362E2A5542963AF89B
            BD2791089A281DE93D8919A0EBDDC916732F9E18E1F711D442AF804E96BB7A2F
            A6871B2D6EFED575F51B15390042E461876017075BCF710EE8ED9FD3D80389C6
            A4710CF5D06C4E6B3BAEAD1F84CC8FF19E44020893DF69F118A624E8EA789645
            67F29F89C6DC2CD8E1C10EB1987FE2050DABA8E679D8710EAD230740887CBCC4
            62CD7A9BE14EC2FCDCCC783AFBBE0D169A1D05DA121F6C71C32D259CCBD9EDF3
            AD7E39614AFECEF39E440F9C8573ACC531CBA06D7887850E9744CEB89EDA6E73
            8D43C3D1C48A96DFD71D390042E4853374D4EC5E91F97D90CD65D320CCDF666D
            3CC701E8CD1F17ECE52DBEEF4CB079D62ED8728D45911F4F08EDD3F782C4D6A5
            2DBE2FD50324E0713C90BB7A006786AA858596CFB1291A390042E407C9D6532C
            6642A7FECE21914B5896CDDF5B3B9FF3DCF75894A5CDD5837D2ED83C7772FE1C
            C6614BF3AD66F8ABC56B89F6D7DE67E144D07004F60FB666E2B1EFB3A8EB7FA9
            F31A5D910320447BBC36D8E72D26AB8D03D9FBF421477BE0C756DED30B67D7B4
            9F453ED5232A507332A047E91FE7F94B829D6BF1F86890EA903659CBE2B544AE
            C0B8FD0E381223E4BF20D8BDDE0BF3460E8010ED420634F5D094426D3FE4EFDE
            63312CFBE5607FF45EC88050037E50B3E6B612226B4D06246A7297B597FC77BD
            C54D9F6BEA41EFC50F00C703F44138B4F9394C89E4A316736288C4D5EA1C2647
            0E80107E90014D39148E00ED5BC9B0EFBDA9DD6FB11EF9D71615C97E66F992FA
            72C3BAA8D3C711A07B5D4E71212A1E48064C95A9DE1684BACFCFFC1EB75BDC08
            175954EEAB159C2494FAA8B6E1BB836E42EF310109A17F08F6CB60D75ACCC3A9
            3D393439720084280B6E6224D671032B2DB49F0A36FFDD2DF6AD27E16BDD0CEF
            C1667A81F74287845E0C39647F49E2BBA8B11BBC179911FA72509D422E4CAD8E
            72ABC801104278C291084F7138026F0EB669A271D94C77F65EDC1050FA46683A
            C53D99337C367ACAF608EF2FF35E9C28133900428892202AB024D15864D48FAA
            7CD836A75B9A3E126CF65441DCE7BD20513E72008410A5F11B8BC983E3C2A67A
            ACF762062065F2DFB1CDBA85981339004288D24066F8CC04E32C0FB6A1959F0C
            B89FA5112FFA57B08D82FDDD7B41A20EE40008214A63BEC527E21495026CAE17
            7A2F680E5225FF91F4B8BFF762443DC801104294C8A260072418A7F464C094C9
            7F9CFD5FE3BD20510F7200841025F22A8BF5DB2928591910ADFD14A245B75A4C
            7AEC6AE9A8C8801C002144A92054B3758271D8648FF35E4C1F560B7647B06727
            184BC97F6268E40008214AA5EBC9804AFE13AEC8011042944ACA64402488BFE9
            BDA0695C6D693A172AF94F8C841C002144C9D09AF65D09C661B3DDC57B313D6C
            6E51A448C97FC20D3900428892E96A32A092FF843B72008410A5932A19F0D460
            1FF45E8C29F94F14821C002144E9742D19907C84149D0A95FC27C6420E8010A2
            74BA960C7895A5112752F29F180B390042881A48950C7855B05D1DD7A1E43F51
            0C7200841035903219D0B34D307908293A142AF94F8C8D1C0021442DD49E0CB8
            6AB03B4DC97FA210E40008216A216532E0E6CDCF36797FB0B3128C4312E3860E
            F3171D430E8010A216D6B6980CB87A82B128C3E348E1C1600F4CFB893DDEFCBD
            872C86D9FFD3BC9E625ECF3C484EA4B46F9560EB34F35CBBE7353F9F176CB760
            4F4F3077DA1BEF97E1F31513861C0021444DA44A06AC1925FF8924C8011042D4
            C48E36D99B9F92FF4432E40008216A235532608D28F94F24430E8010A2368E0A
            7686F7241C90F29F488A1C0021446D905847395D0A65C09A90F29F488A1C0021
            448D500E78A4F7245A8433FF6D832DF59E88E80E7200841035421DFC9F2C8AEB
            4C0217057B93F72444B790032084A89593822DF09E440BFC23D876C196794F44
            740B390042885AE1E9FFFA602FF59E4866902D3ED57B12A27BC8011042D40CE5
            80E802CCF79E48262EB118FA7FD27B22A27BC8011042D4CECEC12EB728C7DB25
            886EEC622B658985488A1C0021441740677F71B0B5BC279288EB82ED13EC7EEF
            8988EE22074008D115C805205B7E63EF898CC9D783BD2FD813DE1311DD460E80
            10A24BD0A1EF448B8973293AEFB5C93DC10E0FB6C47B22623290032084E8229B
            043B3ED8C1C19EE13D9939F85BB0AF043B2DD823DE931193831C002144974130
            882C7ACED377B0182128019EF62FB5F8B47F85459D7F215A450E80106252E048
            80FC00DAE9AE63B1A7C04CF6CCE677282F7C5A9FD74076FED439FD63C15634AF
            97077BA0E767EFEBBB2DCAF92AB94FB8F35F2DB3765B8D30D9CA000000004945
            4E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 26.456710000000000000
          Width = 570.709030000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            'PT. KELOMPOK 6 SEMAKIN DIDEPAN.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 94.488250000000000000
          Width = 268.346630000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'LAPORAN DATA PEMBELIAN')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 128.504020000000000000
          Width = 1179.212896220000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 204.094620000000000000
        Width = 1171.654300000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779529999999990000
          Width = 37.086580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '  NO')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 3.779529999999990000
          Width = 363.672108110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                                       SUPPLIER')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 756.871736220000000000
          Top = 3.779529999999990000
          Width = 136.900308110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '         HARGA BELI')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 1030.672352440000000000
          Top = 3.779529999999990000
          Width = 144.459368110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '         TOTAL HARGA')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 400.758688110000000000
          Top = 3.779529999999990000
          Width = 356.113048110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                                            DATA BARANG')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 893.772044330000000000
          Top = 3.779529999999990000
          Width = 136.900308110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '             JUMLAH')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 64.252010000000000000
        ParentFont = False
        Top = 514.016080000000000000
        Width = 1171.654300000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1171.654300000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Top = 19.897650000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 1065.827460000000000000
          Top = 27.456710000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 30.236240000000100000
          Width = 192.756030000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CUKUP SEKIAN')
          ParentFont = False
        end
      end
    end
  end
  object FRDB_DATAPENJUALAN: TfrxDBDataset
    UserName = 'FR_PENJUALAN'
    CloseDataSource = False
    DataSource = DataSourceDETAILPENJUALAN
    BCDToCurrency = False
    Left = 744
    Top = 344
  end
  object FR_PENJUALAN: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45285.683506608800000000
    ReportOptions.LastChange = 45285.854515185180000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 632
    Top = 344
    Datasets = <
      item
        DataSet = FRDB_DATAPENJUALAN
        DataSetName = 'FR_PENJUALAN'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 210.819863845504600000
      PaperHeight = 148.431154138212900000
      PaperSize = 256
      LeftMargin = 2.539998359584390000
      RightMargin = 2.539998359584390000
      TopMargin = 4.497913761764030000
      BottomMargin = 4.497913761764030000
      Frame.Typ = []
      MirrorMode = []
      FontStyle = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 85.000000000000000000
        Top = 17.000000000000000000
        Width = 777.600000000000000000
        object DMPMemo1: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 777.600000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'STRUK PENJUALAN')
          TruncOutboundText = False
        end
        object DMPMemo2: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 34.000000000000000000
          Width = 777.600000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PT. KELOMPOK 6 ')
          TruncOutboundText = False
        end
        object DMPMemo3: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 51.000000000000000000
          Width = 777.600000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'WELL PLAYED')
          TruncOutboundText = False
        end
        object DMPMemo4: TfrxDMPMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 68.000000000000000000
          Width = 777.600000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '022 09912')
          TruncOutboundText = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 51.000000000000000000
        Top = 136.000000000000000000
        Width = 777.600000000000000000
        object DMPLine1: TfrxDMPLineView
          Align = baWidth
          AllowVectorExport = True
          Left = 4.800000000000000000
          Top = 8.500000000000000000
          Width = 768.000000000000000000
          Color = clBlack
        end
        object DMPLine2: TfrxDMPLineView
          Align = baWidth
          AllowVectorExport = True
          Left = 4.800000000000000000
          Top = 8.500000000000000000
          Width = 768.000000000000000000
          Color = clBlack
        end
        object DMPLine3: TfrxDMPLineView
          Align = baWidth
          AllowVectorExport = True
          Left = 4.800000000000000000
          Top = 42.500000000000000000
          Width = 768.000000000000000000
          Color = clBlack
        end
        object FR_PENJUALANtanggal_penjualan: TfrxDMPMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Top = 17.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          DataField = 'tanggal_penjualan'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PENJUALAN."tanggal_penjualan"]')
          TruncOutboundText = False
        end
        object FR_PENJUALANno_faktur_penjualan_1: TfrxDMPMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 537.600000000000000000
          Top = 17.000000000000000000
          Width = 230.400000000000000000
          Height = 17.000000000000000000
          DataField = 'no_faktur_penjualan_1'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FR_PENJUALAN."no_faktur_penjualan_1"]')
          TruncOutboundText = False
        end
        object FR_PENJUALANnama_1: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 374.400000000000000000
          Top = 17.000000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          DataField = 'nama_1'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PENJUALAN."nama_1"]')
          TruncOutboundText = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.000000000000000000
        Top = 255.000000000000000000
        Width = 777.600000000000000000
        object DMPLine4: TfrxDMPLineView
          AllowVectorExport = True
          Left = 561.599999999999900000
          Top = 8.500000000000000000
          Width = 211.200000000000000000
          Color = clBlack
        end
        object DMPMemo5: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 662.400000000000000000
          Top = 17.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(strtoint(<FR_PENJUALAN."total_harga">),masterdata1)]')
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 537.600000000000000000
          Top = 17.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total :')
          TruncOutboundText = False
        end
        object DMPMemo8: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 614.400000000000000000
          Top = 17.000000000000000000
          Width = 28.800000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp.')
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.000000000000000000
        Top = 204.000000000000000000
        Width = 777.600000000000000000
        DataSet = FRDB_DATAPENJUALAN
        DataSetName = 'FR_PENJUALAN'
        RowCount = 0
        object FR_PENJUALANnama: TfrxDMPMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          DataField = 'nama'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PENJUALAN."nama"]')
          TruncOutboundText = False
        end
        object FR_PENJUALANvariant: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 278.400000000000000000
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          DataField = 'variant'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PENJUALAN."variant"]')
          TruncOutboundText = False
        end
        object FR_PENJUALANisi: TfrxDMPMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 124.800000000000000000
          Top = 17.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'isi'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PENJUALAN."isi"]')
          TruncOutboundText = False
        end
        object FR_PENJUALANjumlah: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 403.200000000000000000
          Top = 17.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PENJUALAN."jumlah"] X')
          TruncOutboundText = False
        end
        object FR_PENJUALANharga_barang: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 499.200000000000000000
          Top = 17.000000000000000000
          Width = 86.400000000000010000
          Height = 17.000000000000000000
          DataField = 'harga_barang'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PENJUALAN."harga_barang"]')
          TruncOutboundText = False
        end
        object FR_PENJUALANtotal_harga: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 662.400000000000000000
          Top = 17.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          DataField = 'total_harga'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PENJUALAN."total_harga"]')
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 614.400000000000000000
          Top = 17.000000000000000000
          Width = 28.800000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp.')
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 460.800000000000000000
          Top = 17.000000000000000000
          Width = 28.800000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp.')
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          AllowVectorExport = True
          Left = 595.200000000000000000
          Top = 17.000000000000000000
          Width = 19.200000000000000000
          Height = 17.000000000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          TruncOutboundText = False
        end
        object FR_PENJUALANsatuan: TfrxDMPMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 192.000000000000000000
          Top = 17.000000000000000000
          Width = 86.400000000000010000
          Height = 17.000000000000000000
          DataField = 'satuan'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PENJUALAN."satuan"]')
          TruncOutboundText = False
        end
      end
      object DMPMemo11: TfrxDMPMemoView
        AllowVectorExport = True
        Top = 340.000000000000000000
        Width = 163.200000000000000000
        Height = 68.000000000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          ' Kasir,'
          ''
          ''
          '(.............)')
        TruncOutboundText = False
      end
      object DMPMemo12: TfrxDMPMemoView
        Align = baCenter
        AllowVectorExport = True
        Left = 249.600000000000000000
        Top = 442.000000000000000000
        Width = 278.400000000000000000
        Height = 51.000000000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          '    -- TERIMA KASIH --'
          'Sudah Berkunjung Di Toko Kami'
          '=== ENJOYING YOUR LIFE ===')
        TruncOutboundText = False
      end
      object DMPLine5: TfrxDMPLineView
        AllowVectorExport = True
        Left = 4.800000000000000000
        Top = 501.500000000000000000
        Width = 768.000000000000000000
        Color = clBlack
      end
      object DMPLine6: TfrxDMPLineView
        AllowVectorExport = True
        Left = 4.800000000000000000
        Top = 518.500000000000000000
        Width = 768.000000000000000000
        Color = clBlack
      end
    end
  end
  object frxReport1: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45284.749225497700000000
    ReportOptions.LastChange = 45285.846795497700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 864
    Top = 272
    Datasets = <
      item
        DataSet = FRDB_DATAPENJUALAN
        DataSetName = 'FR_PENJUALAN'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftBottom]
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Height = 154.960730000000000000
        ParentFont = False
        Top = 287.244280000000000000
        Width = 1171.654300000000000000
        DataSet = FRDB_DATAPENJUALAN
        DataSetName = 'FR_PENJUALAN'
        RowCount = 0
        object Memo8: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 37.086580000000000000
          Height = 154.960730000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ''
            '    '
            ''
            ' [Line#] ')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '    NO. FAKTUR')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 176.929190000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'no_faktur_penjualan'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[FR_PENJUALAN."no_faktur_penjualan"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 22.677180000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '    Tanggal')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Top = 22.677180000000000000
          Width = 18.897650000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 176.929190000000000000
          Top = 18.897650000000000000
          Width = 222.992270000000000000
          Height = 26.456710000000000000
          DataField = 'tanggal_penjualan'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[FR_PENJUALAN."tanggal_penjualan"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 45.354360000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '   ID Pelanggan')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 176.929190000000000000
          Top = 45.354360000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'id_pelanggan'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[FR_PENJUALAN."id_pelanggan"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Top = 45.354360000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 64.252010000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '   Nama Pelanggan')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 176.929190000000000000
          Top = 64.252010000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'nama_1'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[FR_PENJUALAN."nama_1"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Top = 64.252010000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Top = 83.149660000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 83.149660000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '   Alamat')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 176.929190000000000000
          Top = 83.149660000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[FR_PENJUALAN."alamat"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8W = (
            '   ID DETAIL')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'id_detail_barang_1'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          Memo.UTF8W = (
            '[FR_PENJUALAN."id_detail_barang_1"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Top = 22.677180000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '   Kode Barang')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Top = 22.677180000000000000
          Width = 18.897650000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Top = 18.897650000000000000
          Width = 238.110390000000000000
          Height = 26.456710000000000000
          DataField = 'id_barang'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[FR_PENJUALAN."id_barang"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Top = 79.370130000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '     Brand')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 758.976810000000000000
          Width = 136.063080000000000000
          Height = 154.960730000000000000
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ''
            ''
            ''
            ''
            ''
            '              Rp.  [FR_PENJUALAN."total_harga"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 158.031540000000000000
          Top = 102.047310000000000000
          Width = 18.897650000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 102.047310000000000000
          Width = 120.944960000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '   No. Tlpn')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 176.929190000000000000
          Top = 102.047310000000000000
          Width = 222.992270000000000000
          Height = 52.913420000000000000
          DataField = 'no_tlpn'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[FR_PENJUALAN."no_tlpn"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Top = 79.370130000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Top = 45.354360000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '   Nama Barang')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Top = 45.354360000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Top = 45.354360000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          DataField = 'nama'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[FR_PENJUALAN."nama"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Top = 60.472480000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '   Jenis Barang')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Top = 60.472480000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Top = 60.472480000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'jenis_barang'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[FR_PENJUALAN."jenis_barang"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Top = 79.370130000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'brand'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PENJUALAN."brand"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Top = 98.267780000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '     Isi')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Top = 98.267780000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Top = 98.267780000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'isi'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PENJUALAN."isi"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Top = 117.165430000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '     Satuan')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Top = 117.165430000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Top = 117.165430000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'satuan'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FR_PENJUALAN."satuan"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 399.921460000000000000
          Top = 136.063080000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = FRDB_DATAPEMBELIAN
          DataSetName = 'FR_PEMBELIAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '     Variant')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 501.968770000000000000
          Top = 136.063080000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 520.866420000000000000
          Top = 136.063080000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'variant'
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[FR_PENJUALAN."variant"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 895.039890000000000000
          Width = 136.063080000000000000
          Height = 154.960730000000000000
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ''
            ''
            ''
            ''
            ''
            '               [FR_PENJUALAN."jumlah"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 1031.102970000000000000
          Width = 143.622140000000000000
          Height = 154.960730000000000000
          DataSet = FRDB_DATAPENJUALAN
          DataSetName = 'FR_PENJUALAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ''
            ''
            ''
            ''
            ''
            '              Rp.  [FR_PENJUALAN."total_harga"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 162.519790000000000000
        Top = 18.897650000000000000
        Width = 1171.654300000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1171.654300000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 30.236240000000000000
          Width = 124.724490000000000000
          Height = 113.385900000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000020000
            0002000806000000F478D4FA0000000473424954080808087C08648800000009
            7048597300000EC400000EC401952B0E1B0000001974455874536F6674776172
            65007777772E696E6B73636170652E6F72679BEE3C1A000082184944415478DA
            EC9D07B86445F1B7EBAFE48C4A94B008A2444140514912541405153060C00018
            51318019232AA0A2181003282A2A208AE4B4928328822002C21214C951B27E5F
            BFF439EE70F786997BAABBCF99F9BDCF53CFDC5DD89E3E73CF9CAEAEAEFAD5FF
            9910FE2CD4638B065BB8E7CF8B547FD7FBFF2C5EBDCE5DFD7BFEFFB97AC61BFB
            67C678E2247FBE27D87F7AFE7C77B0FFF6F9E73B83DDD763FCB77B7BFE7C4FF5
            77BDFFCF9DA53F7021841894FF2B3D01D17AE60FF694604B075BB2FA79C9EACF
            FCBC44B0A5AAD77A311F456A67E0F660B706FB57F58ADD12ECE69E3FF3F3DDA5
            272C84186DE4008C2E2CEC3382AD58D97236FE22BF50E9890E290FD99CCEC16D
            C16E08765DB0EBABD7DB4A4F5408319CC801185E58E09709F6B41E5BB6E7EF66
            047B42E9498A29C151F847B06B2ABB29D83F7BFE8C93F09F698F2E841859E400
            7417166F76EE4F0FB66A65332A5BC1E239BB187E1EB6D9D102ECEA605706BBAA
            7A7DB0F4048510ED440E40FB5930D86AC1D60CF60C9BBDD8B3F0CF5B7A72A2D5
            90D88873503B035704FB6BB04B2D1E3D082146183900ED810CF8D52B5B2BD81A
            95AD640AD50B7FC82DC011B82CD85F7A5EEF2A3D3121441EE4009481C43A76F3
            2CF0EB55F66C8BE7F64294841C838B7A0CC7E09AD2931242F82307203DF3595C
            DC9F13ECB9D5CFAB9876F5A23B50A5F0A76017063B3FD80516AB1684101D460E
            803FECECEBC51E7B96CD16B8116258202A70BECD7608FE68B1624108D111E400
            3403F5B967067B41B02D836D665110478851E3D1607F0E7676B0B3829D1AEC8E
            D29312424C8C1C80C16027BF61B01706DB28D8F34C4239428C07DA0424199E51
            D9E926874088562107606A10CDD9B2B21799EAEB85980E942492475047084EB0
            D8634108510839007342087FEB602F09B68545495C21842F08149D13ECA460C7
            5A2C41144264440E408472BC6D6CF639FE5C8D4613420C0A95063803C798A203
            426461541D0014F4D8DDBF2AD84B2DEAE30B21DAC1031673067E13EC68936AA1
            1049182507807AFCAD82ED10EC15A6B37C21BA00B903E706FB55B02383DD587A
            42420C0BC3EE00B0E813DA7F8DC573FD054B4F6844A01EFCAE1E239C7B8FC59D
            DDBFAB9F3903BEAFFA6F0FDAEC902F7FF788C52CF27BAABFE3DF3C3CCEFBDC63
            9377C25BD8C63FCE59CCE2BD4F24688109FE6E118BF7CF42637E66CC05ABFFBF
            B6854B7FE023C2FFB3A83B7044B0C32D764914424C9361740050D8A34C6F278B
            217EEDF49B71B7C5F3D9DB7AEC569BDDBF1EA3BCAB77C17FA0F4A433831E44AF
            43B078B0A78C634B057B72F5F392D5BF13D383C8C0CC6087053BCAE27D2A8418
            8061720050DC7B53B0D75AEC7B2F2607E1961B82CDB21856ADFBCC8F7D1DB5C5
            3C172CFE3801DCABCB54B66CCF2BAD9E6904A5E8C2D41041FA9D4567E0388B11
            2421C41474DD01A0790E21FE5D2D66F08BC773A745C9D6F18C36B18F969EA098
            12A2096851D4CEC1D37A0CD96909513D9E7F053B34D8F7835D5D7A3242B499AE
            3A0068EDEF6271B73FCA0F40763AF479BFDCE2A27EADC51D3DAFD799B4D94701
            1C831916A3052B553FD79D26172F3DB982902F4025C1C1C17E6DFA2E0831075D
            7200E6B1B8E0BFCF6247BD518285FE2A8BAD592FAF5E2FABFE4EE14E31113807
            AB5B74066AE3CF8B959E5866C857F95EB06F593CDA124258371C0094F9DE1AEC
            3DC1962B3D99C4109227345F2FF2BDAF3A8B175E1019A89D81FA951C9A616F64
            452509DA025FB3585A28C448D36607802E7B1F0EF67A8B2558C30621CABF596C
            A57A61F54A3735852A45293842784E8F11695BA0D188ED857E04FB05FBADC5EF
            A21023471B1D0076247B5A5CF887A94C8AD0E3453D860EFAEDA52725C424D4ED
            AED7EBB10D2C1EC70D0BF420D837D84F6D724D0921868E363900EC363E116CBB
            96CD6B3A2066F3078BA2251754260533310C2082543B02CFAD6C85D29372E0AF
            C1BE18ECE72647408C086D586857B3F8C5DBB625F3990E28D29D69B37B9FB3F8
            ABC44E8C0A68166C5AD926C156293DA1065055C34604B5411D0D88A1A6E4824B
            86F2DEC1DE62DDEBBE77BFC585FEE460BF0F76B169D72044CD532D3A0334DCA2
            FFC6F2A527340D88DA7DC4E2F75B88A1A4840380AE3A5FAC0F5877128C901D65
            913FB932128894AC27447F10E5DBAAB2CDAC5BDA1D280CEE65B11A4788A122B7
            03F0BA60FB5B37DAEFD29C86FEE43C009017554B52219A4302E1C616153CB12E
            1C17709CF7CD609FB6D94DAB84E83CB91C0094C910E1D8A2F4054F010A7AC758
            5CF409FD3DDC6C3821C4145065503B031B59BB2B7FE83E48E4F257A527228407
            A91D00EAF73F6EB19E7FDED2173B01E8851F51D945A52723C4084373A457067B
            B5C58E9E6DCD0D3A31D8BB83FDBDF4448468424A0760DD603FB158D7DF36F8E2
            52EEC3A2FFE7D2931142CC016D93A90CDAD162A3AFB64506FE1DEC8316258655
            2D203A490A07E009C1DE1BEC2BD62EC1107AD6B3E0E3949C6DFAD20AD1157006
            880AD0EEFBF9D6AE7261F284902AFF47E989083128DE5F245A94B2C03EBFF485
            55D4DADF8758FCA2AA365F886E433ED11B83ED6CB1DCB00DA0E8B95BB0234B4F
            448841F07400B6B628A7D98616A468ECFFA83265EF0B317C1069DC3CD8AE16D5
            43E72E3D218BC701342D53874ED1093C1C00C640396B6F8B5FCA52F0A523C4FF
            6D8B75FA4288D1005131C2F0EFAC7E2EC9CC60AF316D3C440768EA0020EA43C8
            FF1505AFE1E6600705FBAEA9D7B710A30C51007205760FF6BC82F3B8B19AC705
            A53F102126A389038098CFF116FB889700652E120D7F6152E513423C9EF5837D
            28D8F656A682E0018B9180634A7F10424CC4741D00FA8693545742C5EB4FC1BE
            6E6ADF2984981A9E55EF0FB64BB0F933BF37CFA77704FB7EE90F4188F1988E03
            402B50A47197CC3C57BAED21C5797AE6F71542741F7203102463419E2FE3FB52
            6EBC67B07D4B7F00428C65500780C5FF348B67FFB9B830D8272DAA6F09214413
            96B398B44CD260CECA814F05FB5CE98B17A297411C0034BB6981BB44A6B951CA
            47172EEAF825DA2384F064658B0BF26B2D9FB01002690796BE70216AFABDF1F1
            9A29AD5B31C39CEE0AF6258BE7FC4AEE1342A464038BCF9A1CE2656C64DE1EEC
            87A52F5A08E8C70140D8E75C8B0A5C29E1CB41B20CCD836E2DFCB908214607F4
            4B9019FEB2A5CF6D428DF4E5C14E287DD1424CE500F0DF8FB2A8B495129AF3A0
            E8755AE90F440831B22C66D109A06220E5B1C09D16CB14AF297DC162B499EA26
            6737FEF984EF8F37FCE5EA3D1E2CFD61082144E04516C5C566247C0F5A8F6F64
            7AEE89824CE600A0B34DAD7F2A118DEB82ED64B1339F1042B48985837DCB62E3
            A1541C6C31F2294411267200B8F9FF6AE9BA6DA1D9CF8D7F67E90F4008212661
            078B4D7E164B34FEB6C17E5BFA22C568329103F00D8B252BDED0B0E77DC1BE53
            FAC28510A24F488066915E35C1D84442D708F6EFD21729468FF11C00C47ECE37
            FFD03F3DB3773425FA0921BA07E2678759CCE0F7663F8B2A854264E5FFC6F933
            1DACD6777E9FAB2D26D65C5BFA828510629AB029222F6037E77149867E76B04B
            4B5FA0182DC63A00B4F5FD8DF37B904BB055B07F94BE5821846808CF4C2A97BC
            77EC74357D6DE98B13A3C55807E0BC60CF751CFFE2605B5A0CFF0B21C4B0F019
            8BFAFE5ED03970F5605796BE30313AF43A002CD4273B8E4DB81F79CD7F95BE48
            218448C001C176771CEF0716A58285C842AF03706CB0973A8DCB8E9FC55FDEAC
            1062582127E057C15EE934DEC316FBAE480A5D64A17600D0FB67A73E8FC39868
            FA231DACDA5621C4B0B390C596E5CF741AEF1D16550885484EED00BCCD62231E
            0FF60FF6A1D2172684109958CB62E9F4FC0E635126BD45E90B12A341ED001C1F
            EC250EE35D65F1CBA036BE4288518284C0CF388C4332200AAC3797BE2031FCE0
            00CC17EC6EF309FF5346784CE98B124288CCB0FBA7E4794587B1684DFC93D217
            24861F1C800D2C8AFF34E5F7C1362B7D414208510816EE431DC6A1BAE0FDA52F
            460C3F3800249D7868F3BF3AD851A52F4808210A4114F5FA604B351CE7AC601B
            97BE1831FCE000D0E96A9786E3DC146C058B9296420831AAEC136CAF8663DC17
            6CD160FF2D7D3162B8C10198196CD386E310F6DAB9F4C508214461D8B99FE130
            0E1BAA1B4A5F8C186E70002EB198B9DF84B7043BA4F4C5082144613806B833D8
            020DC77996C567B310C9C001C0CB5CAEE138F40FF04824144288AEE3B1A9DACC
            6262B510C9C001E0BC69C186E3AC146C56E98B11428816404F952D1B8E81BCF0
            D1A52F440C373800FFB539BB020ECA32A6A63F420801B4547F45C331A4052092
            C3C2FFFF1CC65933D865A52F4608215AC0B9C1366C38C69B83FDB8F48588E1C6
            CB017891F9B612164288AE729DC52CFE26C80110C9F17200F6361F1D6C2184E8
            32CB06FB87C33872004472BC1C00C9000B2184D91BCCE7EC5E0E80488E970340
            22E1CAA64A0021C46873A2C523D1A6C80110C9F17200E08BC13E5EFA828410A2
            10AB04FB5BB027388C25074024C7D301B823D8D3AB57218418357E685115D503
            390022399E0E001C18ECBDA52F4A082132B36EB03F98CFEE1FE40088E4783B00
            7403A4FEF5A2D21726841099982BD899D6BCF6BF1739002239DE0E005C1D6CBD
            60F794BE382184C8C017827DCC794C39002239291C00F859B09D4A5F9C104224
            66AB6027985FE8BF460E80484E2A07001006DABBF4050A21442290403F23D8E2
            09C69603209293D2010012020F2C7D914208E10C2DD4CF09B67CA2F1E50088E4
            A47600FE13EC1DC1BE5FFA428510C28915839D62B1EE3F1572004472523B0056
            8DFFE160FB97BE58218468C8332D363E5B2EF1FBC80110C9C9E100D47CD962A6
            EC7F4B5FB410424C838D831D15EC2919DE4B0E80484E4E07008E0FF6FA607795
            BE7021841880B707FB56B07932BD9F1C00919CDC0E005C1E6C87EA550821DACC
            7CC1F60BF6EECCEF2B074024A78403000F06DB2BD8370ABDBF10424CC56A1635
            4DD629F0DE720044724A3900354707DB35D8ADA53F082184A8E0B9F84E8B3BFF
            F90BCD410E80484E690700EEB4180D38B8057311428C362B073B28D81685E721
            074024A70D0E40CD8916350366959E881062E4983BD887827DCAE2B97F69E400
            88E4B4C90180072CE605D05CE3DED29311428C045B06FB7AB0354A4FA4073900
            22396D73006AFE69B197000A82D20D1042A460558B0265DB949EC838C80110C9
            69AB03507369B0CF05FB55E9890821860654FC5027DD2DD8BCA5273301720044
            72DAEE00D49C1BECE3C14E2F3D1121446741C18F73FEDDAD5C767FBFC80110C9
            E98A0350736AB02F596CC4218410FDC08E7F8F60BB045BA8F464FA440E80484E
            D71C809A8B837D2DD84F2D761C144288B150D2C76E1FAD913664F60F821C0091
            9CAE3A0035575AAC1AE08BA2AA0121046C6E71E17F79B027949ECC3491032092
            E3E500DC66793A644DC4DDC17E64B159C7D505E7218428C302C1DE10ECBDC1D6
            2C380F9EA777047B72C371E40088E47839006866B3F86E5EF87A28193CC9A2AA
            E031C11E293C1F21445A58EC39DB7F63B0C50BCF8585FF4D1617EF1D1A8E2507
            4024C7CB017852B07B827D36D847AB714B7373B04383FDC0E251811062382091
            EF35165BF46E587A32151706DBD1A292E92F4D0E80E8009E0EC09DD5CF68681F
            6231F3B60D707DE7584C18E48B797BE909092106E689169F2D3B057B95B5279B
            9F24E47D837D3AD8C3D5DFC901109D2085030084E23812785DE90B1C035FD013
            2C3A031C113C507A4242884979B6C5B3FDD7065BA6F464C670ADC590FF5963FE
            5E0E80E804A91C809AED2D66E9B7ED8B0BF7053B2ED811D5EBBF4B4F4808F1D8
            3369FD60AFAE6C95D2131A07728DBE1DEC63367EF5911C00D109523B00B09845
            F19E5DAD1DB901E3412480C8C091169D813B9B0D27841800C2FBCF0FF64A8B8B
            FE0AA5273409975894103E6F92FF470E80E804391C809A1704FB66B0754B5FF4
            143C1AECEC60C75A3C26B8A2F484841842D818BCD862ADFE4BAC79D95C6AD8E9
            D39784AE81535517C901109D20A7030078FA6FB3D8EEB7A46EC020FC3DD8EF2C
            9617FEDE745420C474E059F3AC605B05DB3AD8C6C1E62A3DA93EE0F9C8424C75
            D34D7DFE1B3900A213E476006A4812E4FCEC5D16053CBA02498454149C6CD121
            F8A3A95DB11013F1548B0B3EB665B0254B4F6840683EC6C27FFE80FF4E0E80E8
            04A51C801A9203F982911FD0D6B69C9381F0C719162303D89F4D0E81185DF83E
            6FDA63AB959ED034C1C9FF64B0D3A6F9EFE500884E50DA01A8593ED82782BD25
            D8DCA53F9406DC15EC4C8BCE002D8CFF642A3514C309CF8EA7077B4EB04D2C2E
            F8AB969E5443FE10EC53C18E6F388E1C00D109DAE200D4AC68F168E0ADD68DF3
            C1A920A11015C28B2AA35E984E86EA6028BA06497B94E76D146CBD60CF0DB644
            E949397159B0CF582C09F6781ECA01109DA06D0E40CD33827DC8A2EAD7FC053E
            9794904D8C33807428678B1704BBA1F4A484E801953D16F90D2C2EF4ECF2DB5C
            9A375D88D2ED1FECD7E67B742707407482B63A0035540A5073FB6E6BA7989017
            FFB2E808E0185C1EEC2F16BB1A3E5A7A6262E8593AD81A9591A5CF62CFD9FD13
            4B4F2C1194F0A1F7F1358BDFB914C801109DA0ED0E40CD3CC1B60DF68160CFCB
            F0B9B4011E54440670082EAB5E7110D025D0118218142A6F58E457EF79A593DE
            D2A52796095A86D31C8C1DFFF589DF4B0E80E8045D71007AE10CF2FDC1B6B3E1
            DDA54CC683C1FE5A199182DA41B8CED4FE58982D65F108AD5EE0EBD76139AF1F
            141CE6032C2EA6F7677A4F3900A21374D101A859D6E2978C84C1B533BF775BE1
            7770CD048683A0C841F7212786E3B0A78D6364E52F527A822D80CA1BC4BBBE17
            EC54F379C60D821C00D109BAEC00F4828EF8CE16FB712F5A701E6D061123429F
            B32C7631AB5F710C6E0C768BC5E88228C7132CEED411CC99116CA5715E757F8F
            0FCF31CA6F0FB178C67F5FC1B9C801109D60581C809AF92C6A8BD3A2137DF161
            2825CC090E00BFC77F5A943D9DE8E77F58D43C10FDC1F9FBB2D5EB3293FC4CA6
            BDEED9C1C079A5BDF7C11665BBDB801C00D10986CD01E8057121CA086949BC5E
            E9C90C21F444C019B8D9E2EF1E87E0EEEAF5AE9E3FD7FFED81CAEEAC5EBB126D
            6057CEAE7B418B0E263F2F54BD2E56D9D89FF93ED43B795EDBDA05B3AB10ADA2
            74EFE71695387387F8A7420E80E804C3EC00F43223D8AB2CB61ADDD0E2435D94
            A7D719B8C7628E02471575C3A5FAEF486E1C2FA44B99E4BD138C8DB4F4787D26
            509A5CA8FA99F3F2278EF9BB85AB3F2F56FDFB2E4A540F23ECF459F409EF23A8
            D5E67C163900A2138C8A03D00BDA022FB5F805A51D6997A587851866C859393A
            D8AF2CEAF377A5CF861C00D10946D101E885F02CE584DB04DBDC66EF028510F9
            6181A77FC609C18EB2D86DB38BC801109D60D41D805E0805AF6331891087E0D9
            A6B35B2152739BC5B6BBA7043BD6628269D79103203A811C8089213AB099C53E
            E63805C32C452C442E38BBA721160B3EB5FA5D0AEDF78B1C00D109E400F40749
            837442E39860638B6A84125C11626A58F0FF6CB3DB649F66B13A64989103203A
            811C80E9C171C13383BDC0A233B099C5B24321461D2A3358F0CFB698AD8F12DF
            1DA52795193900A213C801F0038760E31E9B517A42426480324CDA5AD73B7C3A
            EC3D507A52859103203A811C80742008B3964511A23A52A03C02D165D063B8CA
            62574A76F7ECF2D59D724EE400884E2007202FC8BEAED763F45E5FB2F4A48418
            0742F9575A5CEC6BBB30D843A527D601E400884E2007A03C34782152B066F54A
            AF768E132450247281CA1E2DA52FA95EFF529916FBE921074074023900ED8486
            303486C1192052B0BACD760C24632CA60BD9F75707BBDCE28EBE5EF46F293DB1
            21430E80E8047200BA050D699E5ED92A3DAFAB065BAAF4E4442BA08FC2D5955D
            D5F333E1FC9B4A4F6E449003203A811C80E1812636BD4E416D4412C83DD091C2
            F0706BB01B825D6B732EF6C3A0A4D775E400884E20076074A0E7FCD32C3A03CB
            543FF7FE7986E978A10D70EECE22CE6EFD9FC1AEA9ACFE330BFD3DA527292645
            0E80E804720044CDFCC19E6AB37BD82F33CECFD8D2164B1C45FFB0A873CEFEAF
            EA75BC9F6FAEECB6D293158D9103203A811C00311DE6B5E80CD05A99C8C2627D
            1ADD1639AA98ABF4054C0376DD0F06BB6B8CDD39E675ACB1B80FBBF4AD783C72
            0044279003204A81E380238043309FC508040E02B90A8B55AF0B8FF9372441CE
            33E6EFE6AFFE7D2FDCD3778DF39E77D9E3EF7776E6F75B4C9C7BD8E242FD68F5
            FA70F5F7F79BCAE1C460C801109D400E801042F8220740740239004208E18B1C
            00D109E4000821842F720044279003208410BEC801109D400E801042F8220740
            740239004208E18B1C00D109E4000821842F720044279003208410BEC801109D
            400E801042F822074074822E3800CC71C5604FB6A8CA46631429B30921DA8A1C
            00D109DAEC00D0CAF643C15E695177BEE6916027063B34D8D116A55B8510A22D
            C801109DA08D0E0073FA60B02FDAD43DECE989FEED60DF3775511342B4033900
            A213B4D101D8CFA20330081C09F0A5DB3FD89FDD3E1D2184181C3900A213B4CD
            01D829D8610DC79819EC9BC17E13EC3F0E73124288419003203A419B1C005ABD
            5E156C19A76BBB32D8C7831DE1349E1042F4831C00D109DAE40078ECFEC7E3A0
            60EFB5983C288410A99103203A419B1C80C383BD26D1757E27D8BB128D2D84E8
            3E4420170F364FB00582CD5BD90293FC1B9E9D77057B20D883169F81BC52A124
            0740B49E3639007F0CB66EC26BDD36D86F138E2F84682F2B057B7EB03583AD66
            515784E7D6E2D5EBBCA5273806390022396D72002EB7F8C54CC56516BFFC4288
            D180C57DB7603B5ADACD450AE40088E4B4C901382BD80B125FEFB3825D92F83D
            84106559C46202F03B832D5C7A32D3440E80484E9B1C807D2D2AFFA5E43DC1BE
            95F83D8410E57889C5C4DF154A4FA42172004472DAE4003C2FD83989AFF7CBC1
            F64AFC1E4288327C32D8672C3ED7BACECE1693098548469B1C003835D8E609AF
            F7B3C13E9D707C21447E9E10ECE0606F2D3D1147AE0DB6A5C5E6674224A16D0E
            0099BA54032C96E87A77B1D83720159C37127A24A3F87A537F022172301DF9F0
            2E70A3C5BCA8EB4B4F440C276D7300E039C18E0DF69404D7BBB2F97BD473057B
            9D459D81F5AB3FD7FC2BD805C1CEAFECC260F724B82E2146955D2D9EF90F2B7F
            0AB671B07F979E88183EDAE800000B357AFE5B3B8E795AB02D1CC783A7591430
            DAA0CFFFFFBFC1FE6AD11938AFB24B9DE724C4A8C0F78FAA9E054B4F2431DFB3
            58CE28842B6D75006A3609B647B0975B3CE79B2E8F5A0CA55DE038B755829D1D
            6CC986E3D0D2F847C1BE1AEC6EC7F90931EC9C62FE4E7D1BE1194D6ED4CCD213
            11C345DB1D809AA7077BBFC5D298E978FBFCDB031CE7835C286D879FE938E63F
            2D0A969CED38A610C3CA66C14E2F3D898C7014B09EF93CAF85788CAE38003528
            7BED6C311CF68C3EFE7F1A00ED1EECBBCEF3F870B0AF24B83E74C4B7B2288A24
            849898932C7E5746896D2CE64709E142D71C80DE7913FA43E98B2FC53C63FEFB
            C3C17E67510DEC8A04EF7FB5C53C8514DC625112F98E44E30BD17588BC211D3E
            0CF5FE8380D3F3E2D29310C343571D805E3812A0C9C7F21633F0AFB398647757
            A2F76371BE3CF1357D3DD80712BF87105D85EFC7FB4A4FA2003CAB57B5B80111
            A231C3E000E4E615C17E93F83DF82C97B57824208498CD7CC1FE61F199338AEC
            13EC63A527218603390083F3DA603FCFF03E542DA4964616A26BBCD1465B23FF
            668BD1CE474A4F44741F2F0780DEDAA372664DE2D14919DE0759D31F95BE5821
            5AC61916857152F090C58D0CCFB207AA3FDFDFF3DFEE1FF3FF2F6AB3CB93512F
            E5794A27C22755962A4761876047241A5B8C105E0E0035F17F2F7D3199E08B7E
            AB3D5EF12F05A9658B85E81AAB07BBCC69AC6F5B5C44EFE8316FB53DAA966A67
            60198BBD489EE530EEC9C15EE43C57318278390074F23BAFF4C56424470912B9
            06C794BE50215A8457F2DF1F2C4A8EE7AEA97F76B08B1CC64151146D14350A12
            8DF07200D0E33EB8F4C56464A36067261C9F2FF8532DF6121042F826FFBD3DD8
            0F0A5D076AA4FD4A874F8692014563BC1C809F05DBA9F4C564E66B16150653A0
            109F108FC72BF9EF5E8BCEF5BD85AE03E7C363B3A46440D1182F0780B6B7CB59
            4C941915C8012049EF0DCEE3B2FBDFD4A40628442F5EC97FA882BEB3E075A05B
            82ECF7220E636D1FECC882D7223A8E97030078E88795BEA0CCF0F9F130F98CF9
            B52FA6B7F9874B5F98102DC253F90F3DFD3F16BE9EEF047B87C3385206148DF0
            740038DBDAD071BC2E8137BF9DC5AE85D4EF2F33CD7168FB8943F1DFD2172444
            8BF04AFEBBD062F25F69D6351F2744C980A2119E0E00BCDEF288E4B49D152D3A
            43CFAD8CECDFF926F9FF912F26A1E767A5272E44CBF04CFE6B53692DCEC8FA0E
            E37CD162CF132106C6DB01A0B73D5AF9DEF5B45D67EE60EB58740AD6B2182120
            796756B0532D26FD3D5C7A9242B410AFE4BF7B2C26FFDD57FA822ABC9201A914
            5AC1940C28A681B7030078D8BB94BE3021C45040B9ED460EE3944EFE1BCB4216
            231B4A0614C548E1000099F13F2D7D7142884E336CC97F63C129D9CD619C1383
            BDA4F4C588EE91CA01A0C676336BDF174E08D11D3C95FF3CC477BC9132A0284A
            2A0700D0CB2723FEAAD2172984E81C9EC97F6D562A5532A028464A070058FC37
            0F7663E90B1542740A4FE5BF65AD3DC97F63215FEA7B0EE32819500C4C6A0700
            2871A3718E220142887E19D6E4BFB1782603BE3AD851A52F4874871C0E00DC64
            3149E592D2172C84683D9E6D7FDB98FC3796832C1E533445C980622072390040
            08EECD260F55083139C39EFC37163442FEE4300ECF729201FF5EFA824437C8E9
            0058F55E7B07FB5CE6F715427483F92DE60C7924FF5162E771BE9E039C95F51C
            C65132A0E89BDC0E400DA1AA9D4DFDEE851011BA6BD205F3AD1625C59B52BAED
            EFA070047090C33874666583F51B8BF957424C482907002813E4CBFEBBD21F82
            10A208ECF6B70CB68DC5665A4B3A8ECD62EAD1712F172403D2267861C7311151
            3AC6E233F66C53D4558CA1A40360D57B231DFC91607795FE30842804E16E6AC1
            970EF6E460F304BBD3A293FC171BAE0A9A2582BD22D8B616AB83E66B36DC84F0
            797A88ECE4C42B19703C10093ABAB27382FDA7F4C53A81134977C519C116B7E8
            48B1961009F95BB0BF0ED1B5BA53DA01A8C1F37D4FB05F979E8810995833D89B
            2C2E84246E4D26778B33704AB0C3821D6FDDABF59ED7E2A2FF96602F0AF6C4C4
            EFC7C2EF21AE931BE67C6186F7A12AEB27C17E14EC8AD2173D0DD075D829D88E
            161328E79AE4FFE50888E8079D56494057A3BA1EDAE200D4706EB58749D2520C
            2FCF0FB64FB04DA6F9EF6FB11835FB8EB55F608B87737DA6FFE48CEFDBA5E4BF
            B1E0BC3C3BE3FB110DC011F8A5C58E896D85B58AE3A2F7067BA94DCF89C41938
            20D87EC1EE2E7D416DA06D0E003C14EC6B16B359BB92C023C454109E44946647
            A7F11EB51831FBA645D19CB6C042CF82CF6E7FDD02EF4FB9313BC4AE3E3B705E
            BE5BE07DEF0F76844567E0F7D69E7581903E913222C4AB398D797BB0DD2D4605
            469A363A003584A9F6B67843762DE429442FECFA7F6E51AA3505175B7404788F
            070A5D238B3DD1BB1D2C86FC4B81E67FAA73F41C9004C891E84205E7808E00F7
            D30FAC9C8432C762EFB6582DB668A2F7606D21A230B2C7026D76006A2865211A
            C0CDA8640ED135E8D5CE796BAA64B75E086B1E6A3182362BD3F521D7BB67B097
            994FDBDEA67431F96F2C38316F2F3D098B470287580C99DF90E1FDB87FB6B0E8
            C0BDCAD2E78A0039172F0F767386F76A1D5D70006AC886FE6CB0232DB6BF14A2
            EDB03072DE9F7B61C451269F865DDCCC04E3B3C327098B1DFF1A99AF6D3290FC
            F510D3290DEA8517949E440F0F073B3CD8FE9646CE9D3E08A8C412E65FB5C0F5
            9173465EC1DF0ABC7751BAE400D45012F5158BBBAA874A4F46887160E7C2E2DB
            86263497063BD06205C1FD0DC77A52754D3CA8972E7D61E340DDBF87984E1BC0
            992991433119AC1554A3101138C961BC6758BC9758FC3DF50FA603790154E49C
            5D781E59E9A2035043072D34C3C988968680680B0B5A3C8B7F79E9898CE10E8B
            C768540F5C3BE0BFE53CFA03C13E68E9CE639B42B87A39EB6EF2DF58BC940153
            41F50092C33307FC774F08B6B5C5B3774A42DB706C54F3A0C536D447949E482E
            BAEC00D490C04134E01B16451F8428C5521695D7DADC8086E30194E188509C66
            937FFF09F5B3ABFE98F9AAF4A5E013C1BE507A128E2006C5F3EC69A527320544
            027004FE30C5FF87E34849E8BB82AD527AD293C0F1F2872CE6D10C3D5E0E001F
            D8E72D4FA2D344D4E1A96F5B7CC03D5A702E62F460F7C9FDF78CD2131900A462
            7104381EE8CDF6465885D2AB4F5BBACA054F10B3E1ECBFE91147DB208A8472DF
            134A4F640A78F622B2F3499B731346E91EBB7D76D6252B1B06E5F3D5F50C355E
            0E0067833382FD2AD8CAA52FCA620921D9D0843CAF2E3D1931F4B04B63F15FA9
            F444A60947689444E13C73EE4CB2ED334B4FAA4F380A7C810D6FE31B16CF6F94
            9E449F105D221ACBFDB3563577B2FADB14E61F04A2001C7B753D4A3E219E0E00
            72A58B593CB7F2123B690AD736D362290B1E6AA99A5631BCB0E367F15FAEF444
            46906383ED62D1E11F668804A06CD8C6C4CB6187F58C638BA1AC3CF376006A28
            1122F378B1D217D803E1414AA37E6AF1DC4AE242A2296B5BBC97962A3D911182
            68C56F2D462C66969E4C4638437FADC5A399E75A9E1A791121AA81B2E5D0E9D0
            A4720060798B21F8AD4A5FE438D0658DE30A340590BD1CBA5FAC480E8233275A
            BCF7453A28F53DD762940523D96CD4BFAFC84ABFD0A2363EF6F4D2131A01582F
            D8D80ED5C631A5035043F2C757833DA5F4C54E006D23D154C719202B7AA87EC1
            22092CFE2C466D2D89EB3A7C2749E465A74F846564A55AFB841C146AD8E9B8B8
            B1293A900A123291BA1E9A04F31C0E00B0F8A322F5466B774208D77082C5522E
            767777949E90681D24379D6E79BBDB8D02E8DFD3910E671C319651DFE54F17EE
            4B649991A07EB1C57242E1071A1FAC6343717FE672006A688A423BC62EF4EAC6
            CB43EC829D08C94697979E90280E097F1C19A53CF3476A95B236A449BB543635
            1D78661079A32B1B9FEB50265A1584E7F2AB2D7667A4FD74DBCB099B42C5178D
            B1F8EE2C90F07D38DA26F9B4F3D501B91D00E02624A1823ACB2E65B5D20CE3E4
            CA4EB598472046074AFCCEB0B4D9FEEC2EF86E70EEDD15E19441619127AC8F82
            2791B6874B4F6844E0BEDDD9E23DD5D572D5F1E07E225A4BA9E449D59F9F6D71
            E3B64CC2F7453F63F7D217DF94120E400D1E1AED1E3F62EDCD0F98086E323C4D
            9C01762E67D9F048908A3979AAC5C53FA52ADB97837DD4E6FC3ED6D2A93C6C48
            A86DF311DA64DC18EC87950D6BCD7E17E07E2271906E83E40D74F588A0EE5448
            B5D955E3FCF715831D176CF58473F892C5EF6C6729E900D4D004E27D160517DA
            543638081C17D0BC83450287E04C8BAD5945F759C2E2EF3595300E678908A67C
            A78FFFB74DCD53FA85F37C8EFD38DB1F9AE4A921811D32CD9D76B3F64B3DD770
            3CC6A2FF639B7AD345B504F7DDA609E7D36909EA363800352CFEB4177DBF75E7
            E136113CD4C919A0D7346D3DCFB7D8CE580FC06E41948ACA90E7261A9FECF6D7
            590C850F02ED5377B618412BD13E752A08EB93D0C7C23F9546BC280F12EEE409
            B0115BBBF464C681882BBB79C2EE445D0759B3E8677188450D85143097B759D4
            A5E81C6D72006A380EF8B045CFB4EB8E402F0F588C12E010D48EC1DF4B4F4A4C
            08A55424A86D9B687C2A4C08ED37E9FBCEF7974CEFDDABD7D2495EDCE32448ED
            1BECFAC2731183C3FDC43D49739FE7979E8CCD96A8FE96357B56725DDC931F4C
            344F4AC7516B3C31EBA7E3401B1D809A3A098AF0E83025ADF442BD73ED0CF07A
            51B07F959E94780C761BEF4934F62D16CFF32F711C13311822023B5B7E7D0224
            B6BF6BB1D457F7EF7080D0108EC01605DE7BA226554DD9DB6283AB14701C41A5
            C5C5493F1967DAEC00D4B013631746786A934C9F4B496EB7785C7079F54A77AD
            4B2D3A0B220F74B7DC37D1D834AF2109EB8A44E31335A34E19C73975431FFAA7
            D340681FD3FD39AC6C64F1F7BB51E2F721CCCF5118E7FB5459A52AB123BA4CC2
            6D8A645AB42C36B45831D609BAE000F442A732FA93A3875DB2F57009F87C710A
            2EEB79C541D08ECB1794BE0EB734E174B2DF59FC7375A8E4A1CDF1C0ABCC571D
            8E8735C7237B06BB36D3B588B270DF7EC5E233D8933A9BFFEB96EF5E22E911C7
            35C5779C6733DFBB1CEB6163BAE600D490BDBAABC56CE8613D1EE8171C006EBA
            6B82CDB2F825AA5F87BD4B9A3724FBCDB434CEE595161FA2257607B4E8464F80
            23B5A69536ECD2D845FDADC07588B2B060922C4844A0A91E069B973ACC7F7F81
            6B416FE3604B239B8C4C383939AD17B6EAAA03D03B7F4A3C76B6A87835ECCA69
            834288B6D72118FB7A7BE909B60816C63F059B91606CEA94B94F4B3B640B5A3C
            1E20B7618D01FF2D47511FB00E263A0977B88FF6B2985437FF00FF8EEA28FA3B
            B0F09F5EFA222C36F7A19C304524E09316C5EE5A4DD71D805E58FCD1BFC6B3DB
            D8BA2B98921312576659146941D990E4B49BAAD79B2D4617EABF6FBD37DB105A
            7EBE21C1B884FDC95D6953563CDF8DCD2D3A02642F4FB60BA25AE1731633B1D5
            284BF432C3E2B100CFDDC99EB76C34A80E21ECDE3611280491BE67FEEB0525DF
            54525C58FA022763981C805E506CE37880DDCEA81F1178C0E28F138033805370
            B33DDE59609140F8E8AE1EEB923222D2A1D4AB7B3F04480A62F16F73B9E70C8B
            8E0F0D64D6B4E848F3FB239BF9288B65589E99D862F8406D8FA453EE75C4AA70
            2859F4114563C78F26C403A5273909E4C91C9060DC9916AB295ACBB03A00BDF0
            707F7565CF283D991102A7A17606B8371EA88C3F73E6F760CFCF0F553FFFBFEA
            E7FA4CF0EE6A9CDEBFEBE5411BFFC1C2223677CF9F0953D6E7FA84FAB9EFC996
            9FABFA6F9C6B3EC7F9FA719608FBFF35C3672DD281E8120B1AF74C6FFE447D6F
            12159183341BBE535D143CE348639F04E3920B7052E98B9B885170007AE1DC73
            1B8B61CF17949E8C185A581CA89FBEA8F444C4B820114B649048219AF1CB5A94
            C2A539199D1E17A96CF101C664D1BBBDB2DB7A5E8992CDB2D9B937375A3717C8
            5180A3AE4F388F7974B05796BEB089183507A0178453EAC8C07AA69C01E10311
            09B2FDCF293D11F1D8738908E01A9571C48136C2200BBB372CFEE48350C68BBE
            C79F2D0A4291283A143DE63B8EB70018B2D834136BA54EC6283B00BDE0F9BFB8
            3214DABAD69D50B40342C2E8081C557A222308A167167B227B1B583CD259B9F4
            A40680E32CAA50CEB5D84C8CD79B4B4F6A04E1B8E78860DB398E896ECD4F4A5F
            D878C80198134A4210BBD8B232CE71E76E34A21815686495229948CC09CF2EBE
            A72FB2F81D65E11FA6DE2140548056E3945ED204E78ED2131A11C80BA296DFAB
            1F021534A964C51B2107606A0817729EFB128BA553AA2A10E3F1554BD76C4444
            A83FA759CD4BABD7A54B4F28231C0FD055F4F8CA682C964A2E57C436E01CE3AD
            E23016BD5E5275146D841C80C1418570A3CAD875B00B29DD854D948590E16B6C
            F8B5124A403B5776F91CAD10961DB65DFE744151925EF7BF0A76B6C919480149
            A238014B351C87DFD50AA52F663CE40034877C019C016A6011205AC7E279A418
            0DA8F127B9ECC1D21319223887A57EFA751633A84B26ED75017A4BFCC2A2AADD
            95A5273364701F9ED6708C7F5B4B556AE500F8C30EE579161391D6AF5E9F5A7A
            5222193C1C4AB44C1D4608B7D2D29885BFE9AE6B14E1597E86458D7B9A35C929
            6D0EC74C4D25BCD1316965F33A390079600743A9E146D52B4E811E70C30167B3
            2C5CB34A4FA4A3F00C22D9163536CEF6759CE6030983649E93807655E9C97418
            1A5F7DA5E118A8A72E53FA42C6430E4039102059BFB2B52CD629CF283D29312D
            5010FB58E949740C76443B5A7CC0AE597A32430C7929C759AC4E39A5F4643A06
            4751384F4D13BFE9D63A68F3AD2CC8016817A88F2150C4CDB27AF54AC4A095DE
            A3F81F887C90E4D366BDF3B64048750F8B4D5874B69F17AA08F6B3A853A184D5
            A921E9F4D70EE3FCCC62E7C1D62107A01B705CB06665F43320E48CA3C0A2A390
            693B78ABC5C639627C784610E6A7A5F022A52733E2D09FE24BC10E3339029341
            C4C423BF0787F76BA52F663CE400741B4AA42855797A65ABD86CE76079937390
            1354DC9E5D7A122D84DA7D445068B6B258C3B1842F7F09F6598B65AC2A237C3C
            4460F97C3C24E2D7B628FBDC3AE4000C2FB573B07C8FADD8F333D1835666A676
            18CA40CF2A3D8996C0BDF52E8B0BFF12A5272326E53C8BBBD4734B4FA4457C3B
            D83B1DC6A1CFC3B34A5FCC44C801186DE880D6EB1050AEC871030FECA57B7E9E
            A7F4443B027DCF5F537A122D80F3CE2F9BCA5FBB04EB0067D5386C37969E4C61
            885421DEE351BBFFA160FB97BEA089900320FA81DFEF788E01B6D804368AD105
            7AC39331FC8FD21329C4AA16774ED245E82E88D650F6B6AF8D6E522B792A5F75
            1887CF8FCDD5EDA52F6822E4008854D05063AC5380478D50124A898B57AFFC79
            BEEAFFE7BFCF5DFDBFFCB745C61973AC63C151C70263FEEE5E7B7CCF751E6A0F
            573FDF65F19EBFDB6202D43D166BF9DF643E4ECB17CCBFA778DBE173DBABB279
            4B4F2603F75B1477A9EFE5610485CBDD829D5A7A2299216FEA6FE6D303E0FBC1
            76297D4193210740880819FC3B3B8C73ABC5E39451516143C4875DFFD34B4F64
            1AB033BB2CD83516C55A68BF7B6BF55AFFCCEFF1AE49C620C971D1318673BB9C
            C51C9C95AAD719D6BDA334D686432C36B91A95E7FB36C18E711A8BB3FF4B4A5F
            D064C80110224253A73F3A8DB573B0434B5F5062F8CE7FC35A5ADF3C86FB2C76
            6423ABFBAF9521CE726BC639B0B32427829D25D522A8813EC7BAD15D1467E8BD
            161B0F0D3BB45E7E91C338BF0FB659E98B990A390042CC86AE6A1E3DC087BD24
            70338B32B3CB959EC804B0609DD56317DBE38F84DA0479341B54460F914DADBD
            F9333FB5D8ABE1EED213490451AC2BCCA77C7A7B8BFD185A8D1C002166F3DA60
            3F771A8B56D1E794BE206738EFDEDBE259FF134B4FA607F23B665A546DA33953
            973BE291CF42073AFA226C6DED8B10CC0AF6461BCE72D7032D3A384D210998DF
            DB23A52F682AE40008311B16B86BCD67677BB8C5AE76C302E7D8EC00372C3D91
            0AC2FA27585CF4D1BABFABD970ADE599169D8157598C4E7908D33485A4D92F5A
            14116A6B64655048E8A4FCD143A592BE20FB94BEA07E900320C4E3F9A4C5075B
            5386A92490737E12FD4A4BF8B2D890A045C2E6C9363A899635E40FBCA9B2154B
            4FC6E23937BA1737979E8803C8541FE0300ED5212401DF52FA82FA410E80108F
            8733D9EBCDE71C1647E2D3A52FA80164ADB3F0BFADF03CC8D2FF81C585BF696F
            F6618033EA4D2C269BBEDA7C046BA60B0EEE0ED66D1541D64112439FE13016F7
            E85B4B5FD020172E074088C7F3638BE79C4DE97249E0532C26316D52E8FD89A0
            1C1DEC608BB5E86A5A333E2CFE3868EFB772EDC4C9C1403CE7DBA53F8C6942AE
            C5714E6391CCF987D217D42F720084981332F82F721A0B47E2B0D2173420AB59
            0CB5AF5CE0BD09A1FED0A21ADDACD21F4487207F859DF8872D96B49680280DFA
            F9AD4F7E1B038BFFD60EE39018B971E98B19043900428C0F0D529EEB300E8EC4
            FAA52F6600B6B2D8D32077E73E167EB4133E67D2A26FCA46C1F60CF632CB9F34
            48B4866389AE940A925781F29F47E91FF910BF2C7D418320074088F121F1CD6B
            E74EE6FCF9A52FA80F68DB4BDFF29CF2B664F37FCBA2F67A2712A73A040EEC7E
            161D829CD0FA1645BDEB4B7F007DF0F560EF7318E79F168F603A15FD900320C4
            F8D0938092408F8E7694CFBDA1F4054D02CF0132A0DF9BF13D39D327D7829229
            25F6A58512C22F595EB96616449C803F95BEF849207F8268D3A20E63513DF4F9
            D21734287200849898BDCD278BBFCD2581843E49B4CB99B97CA1C5A4B561134A
            6A3338B46FB15899B254A6F7E418806388B34B5FFC0420FA73A0C3381C5F5196
            D9B972483900424CCC321613D13C9AB8EC1DEC33A52F680CA8F971EE9E4BCF1F
            0708154122221ECF1D3138EC76F7B618EDC9A1E64827CE6DAD9D5D0539AA58D3
            611C22596F2E7D31D3410E801093C362F57A87710873CFB0D96D894B3377756D
            3B64782FC2FD9CB57ECAE28220CA435E0AD516AB65782FCA60B9CF7E57FAA27B
            20D9F524A7B168EA7461E90B9A0E720084981C1E945E2227ECB47F56FA8202F3
            06FB85C59D596A10F121F47C46E98B1673C07D8053F6114B9FF8C9311859F2BF
            2E7DD115BF0DF6728771A8167A5EE98B992E720084981A5AC96EE0304E1B1E16
            3CF429557A4586F7A26320E7ACF716BE6631396B5BACE14F5DAE4AF48B84C463
            0B5FEF8C60579BCF11485B9CFA6921074088A9417BFD50A7B128CDBAA0D07510
            F6FF8DF9889E4C0619E0A8D39D50E83AC5E0706FA0C1403420A576C00316EFBF
            DF17BCD6FD83EDE1304EDB8EF506460E801053C3AE999AE6251DC6FA86F9D41D
            0F0AD9FEE81AA4EE50C8EE0EF5433D0FBA0961719CDDC513BE071121CEE04B68
            63F03DC041F5A88420A977EF02D7E0861C0021FA83DDD1271CC6E14CBC84C4AE
            57AFF389E039421DF4DE26DDFEAE43C9EAAF82AD97F03D582F5E60B1094F4E88
            C09DE7304E9B4B7BFB460E8010FDB19CC528804778944E830F659CFB472DF66F
            4FC53D168F497E93F19A445AB847A9DCD82DE17B20B4454E4CCEFA798EA6BEEF
            300E7934AFC938EF24C80110A23FD0373FC269AC2707BB23D3BC770C76B8A53B
            D7BD22D82BAB57317CEC1CEC20F3D1C2180FF2615E18ECFE4CD78300D5D71CC6
            B932D81AC11ECD34EF24C80110626AC816BE24D8EA0E639130B4B0E5491CA284
            F1B460F3271A9FF37E3412EEC9702DA21C5B5A6C0DBD48A2F1290DDCDEF21C1D
            7926F4124DF861863927430E80105383CAD7214E63FDD1D29EADD67064415FF2
            54B2AF94F8211FDCE91D90E89B752C3A7CCB261A9FF6CF7B66B80E4A1EFFEC34
            164782AB5ADEE33C57E400083139944711DE7E9AD37848E17E39F19CA95A4078
            E73989C6A77BDFEEA664BF5183C658C7595C44BD611D7AADA56FA7CB9A7799F9
            292072A47040E23927FD30E4000831315E0D4380D6B72B58FAEF0ACD7DDE9E68
            6C9C97BD12CFBF341C992C6FB11704E570388168E87314B458F5FFDC65F1D949
            5DFB6DC16EB7D8CE9812B3CED685F7019FC7D1C136493036DF0F8EAD2E4B7C0D
            BB5ACC6BF080DFF9CAD5DC3B871C0021268685E02AF369090C1FB7B4D9F8E0F9
            70EB85DD3EBB9D6F269E7F4EE8E0B64E65CFB228EAC2D1C9120DC6E473C20998
            15EC6FC1FE62317F84B0F3EDA52FD889052C4602364D3036D1364AF552E69520
            7B7CB1C5243E0F3AD90A18E4000831319EE573943C9144F860C2F9AE65515CC5
            3BE98F458D84A74312CE3D3508C0AC6B31A16D0B8BB2B729C56EC6038780BE12
            6759EC8E37ABF487D28085829D18ECF909C626E170FBC4F3E73E38D9692CDA1E
            1305E89C8327074088F121E4CBA2EDB54850467854C2F92E68B1A4CAA352612C
            C8A67A944EE586DFE176C15E1A6CF3604F293DA131B0DB3DDEA27EC299D6BD9C
            0AAA02584453E49AEC623EF5FA934152E34B9DC6CA95C4E88A1C0021C6074D74
            AF643D4AF1B6483C5F1E966F4B30EEDE16254FBB02D18F6D2C4A1EA3393F5FE9
            09F509BAF2A8EFD158A68444EE74E1D94F34631DE771691BFD6C8BF5F6A958C5
            E211CDBC0E63216F4C7ECF5D09E7EB8E1C0021E684A42F247B9773188B5D1D65
            7F17279C2F9DFD52A8F095EA5B301D887C50994077B6854A4FA621E40C90C849
            EF862E2C28E44C9C6E7E67EA3594B172C4F048C2B9738FBFD769AC0F07DB2FE1
            5CDD910320C49CBCC1629DBB073FB72896930AC2DA97065BDA795CAE1FFD038F
            E7432A38D727B48F93F2324BDBC5AE0464961311F8AAC5FC813643D5044750DE
            F7E13EC13E9670DE382F7FB728CED514FA02502EDC992A10390042CC09623DEB
            3A8CC3CE859DE9D509E74ADDF40ECE637236CAD9795B457E58F8D161FF74B067
            949E4C06FE63F178E0B396BF79CE2090BD4F24C03309957B90D2C08B12CE9BCF
            F5934E63D109F3B0847375450E80108F871DE5A94E637D37D83B13CED5B33F41
            0D3B4D1EE477279C771338EEA033630A319AB683234044606F8B47546D0467F4
            17E61B8DE14884AA8D544701ECFE71D23DDA7D3357F221DA1C39FB1F5E0E0075
            D2FF2C7D314238F03B8BE1E4A650EE479251AA76A13CB42E379F3C851A129936
            ACC66D1B38250754AFA30ED2B374EAFB82C5DF59DB2069F453CE635292FBA584
            73E6FCFE2B4E635162E8B589488A970380377E69E98B11A221849359FC9EE030
            D6B72DAA08A6C2337909780EB07B3B32E19CA703CA7B6831D096D6E3F7324CFC
            CB62B58A57BE8A17AC2B84C13D735F707AD859A7EA3A4919ED2CF32915A5B4D3
            ABBC30295E0E40EA1A672172F03D8BF5C74D2154F9F460D7259A27E1D0F32C4A
            D37A4158DD7BD7D694975B74A43CA31CC3C84C8B0A9057959E480FA8055E68BE
            BA14ECAAB74C3867F2003EEB300E6B2AA25CA9258D1BE3E50090A5FAC1D21723
            4403281DBBC97C4AC868119AA2261FF8CED2E86723C7314FB2B863F94FA2390F
            0ABBB01F583CEF17FD41C500824D07979E480F9405E204782605BED2622F8214
            201C35CB66F77B6802C755EF4F344F37BC1C00C2325EDD95842801AD6D7FE030
            0E8B28BB9E540226D4B97B661993A3C06EA52D49BC2461FED8FCFA2F8C1A2C8E
            44B16E2B3D910A8EA9BEE1381E257B3816A95AF05276E8D1EC8ACF9F7BB8D525
            815E0E00BC20D839A52F4888698214ABC7AEFAD7C15E95688E845529035BC169
            3CBEFB243C1E9F68BE8380F8120D553E643AEB6F0A4E1D5AFAE7959E88C53506
            A7C4339A93B2A5369500D79B8F3A20BF83B6E5D43C0E4F07807224EF7A642172
            C0793DE56F1EA54B2FB478269B02AF33CA1ABA06BE23D15C078132629E1F2F2C
            3D912182FAF94F58BA85721010DBA11BE2324EE351F9B0AAC524C81410817AA3
            C338744CF4A8284A86A703C038C836B6C1EB14621028A7F2501BA31226557DFA
            932DD67E2FE2341E63D102B7741FF3675A2CBD5CB9F03C8615125BA946292DEA
            B495C5EE815EFA0029AB6CE841E0213CC471E08C6037269A67633C1D00E00860
            136B4F329110534126FD2CF3C934278FE04789E689C6B857A22DFD09386BFF7D
            A2B9F6CB8B2C8AC678245D79C3D9EDAD95911C8AA3C4E7560B2491D8B6686574
            8C5CDEF2B717EE971382ED68E535030E0DF626A7B1A8B4A16CF7DA447325D176
            63877152EB1734C2DB0100EA52F72D7D6142F4C98B2D3E209B42D20F8BC08309
            E6483211255E5ED9D46DA8DA2199F1906073159E07B0433BCB6298FAF2CA5858
            06DDC8E000A005CF9112A59AB4C96537B960E90BB4D88C8A7BFD968273E02880
            84F127398D47D2EEDB13CD95F3FB5F398CC3D12209F2AD54064CE100F000240A
            7061E98B13A20F0EB7A82BDF94AF592CC34A012545BB3B8D4582183BA77F279A
            6B3F1029A15CAD54B21FBBF8E32A23F933955E031061C209A0CC92F6C41B14BC
            6E165FEAE853A953F6037A0507398D85834645408A464924A5DE106C2987B148
            2E3E3BC11C1B93C2010064813730C9038B7643CD3F215E8F9EF194FEA568D4C2
            0388DDA8D7EEBF74B3127A237CCBF277EE23844FE3247675A759B9F22C76C138
            9C84C23728F0FEE47E70FC93D2E9990C9C1F9CAEE73B8D870AA2D7B1C2589006
            FEB0C338DF09F6AE44736C442A070048A2D8C2DADB544408AF663A848F3DCE0B
            C7832CEE8F388D75AEC572DD52E1486AC28966E45CFCE9294FB481B6CCA5CFC0
            C782D3483484BA7DAFE4CE7EA0F10D51DA9B0A5DF79A163B6ECEED3016C98DF4
            DC48E1D0506940D4A4E9FDCA46981CA3D61D03A4740080070EE74E6DFBE20901
            5EE53E6FAEC6F286E4386A923D7A9593C046A39F524773EC7AE964972BFC8D6C
            2CBA02330B5DEF20B0F8D3EBE07D964F000999DACDAC9C601047665E4A79298F
            DF6606DBD4611CBE7BE7279AE3B449ED0000BB2334BDEF2A7DB142F440F2D9CD
            D63C2189B3F4A52CCD993AA2385E09B55427BC35C11CFB61338B89961EE22A53
            41781FBD842E8A92CD63519781F97B34A5990A366844691F2870AD5C1FC7111E
            CE2D1B4CC4B152AC315E0AA154027C34C1FC1A91C30100B26A4980B9BEF4050B
            51C139A847CB4E76B53B25981FC963846A67388CC50392C4BF12215FC2BD9CF9
            A62EF5432296F3DA5F17B8466FF8AC582C48FCF4C84F990C8EC088CEFCB7C075
            226AF549A7B1F634BF76BEBD109D61A3D0F4F74015CFAA09E6D7885C0E009051
            B99DC5B31F214AE395598FC4E93109E647D313AF0E9BE41178E89B0F0AB2AA9C
            C12F9FF03D48E66321412721953E7C2970DABE6FBE8D9FC6A3D4EE140D05A200
            1E65815436AC64511FC01BBE87AF74182755A2F0B4C9E900005F50D49B3C422A
            42348107CF4A0DC7A081CED29626A39C50B68734EEFDD575E6AEFFE6AC9F1E03
            2F4AF81E7FB19801FEA7CCD796139ED12409E2E07884CBC7833580288047DDFB
            A0B073F712CAA107478A081012F7BF741807B5D17D12CC6FDAE476006ABE6B31
            69A3C4D99310EB98CFA2C1EE6C9704F343169790A147B6FCD7837D20C11CA7E2
            7316B5E853C0338B70EFA7ACE5DDD61C217CCC029D4A6A9A63A2E75AFE1D2AE5
            ADDCEB1EC98FA9B4F79923C7004D1DB00B2C7EC6ADA1940300DC686F301D0988
            BC906885129E878EF836C18E4D3047AFD23F226E3813B9855F10BDE1582445C6
            3FF5FC3B5BCBBBAC258273685AEBA6703A81CA00B409726FCCA87EF8BAC33808
            0311EDBA21C11C71BEB66F38066B2D0E406B44F24A3A0080F7CE4E81075E8AB3
            1B216AA81546367467F351F7622142D4C55BFA97DA689265977618AB840009F3
            2634FFE40463A3F8C6596CABCE510B8098D2372D268A7A436E8C57795EBF20C8
            851CF3A20E637DDA7C3B66D6B059FD89D35854A8D0A4896385A251F0D20E400D
            0F0C2422CF2D3D113154B0DBDFD6E2BD45B993A7004DAAF6D724CA7A9C63E250
            13369E95608E93C1CEFC5509C6A5CB28E1DD3B325F4F5B21F91471A3059CC765
            3D7849B093325F8F972E00CE335100EFAA0612153906F0EC5D718F4529721CF5
            8B9DE7DB176D7100805F181AD19485DC5E7A32A2D3B0DB274CBAB3C54CF41490
            7CE6B523E8855D818763C1381E3D0E06C12B596A2CA758DCF9976E5DDC361097
            A195B277B405553DCA37737EDE332C96BD7A443550393C33C11CBD1273C783CD
            6F1D15B83FD17BCC419B1C801A3CFCBD2D7A45A57B588BEEC06E9F4582859F1A
            FF9472B338AB3816DE8E2A4946EC323C74FFE9BF7E4AC2CF602C2C42979BBFC3
            7574B0D7DAF095F879B1AE453D0BEF56C4E41ABC2FF3B5FCD6A2685C53E835F1
            9E04F323717DFFC49F016246F4EAC019B834F17BB5D201A8E161C279CE912D9E
            A3280FAD57EBDDFE1299DE933E17EB271897A8C2A10EE3D03C8828484E7117CF
            5EEF353830245A6AF19F1CDA0E9F6CBEFD044A48476F595D475368F0B5ACF96F
            20D70A7649C6CF83632F1C815F58A2A8409B1D801A325329F9C12B2AA15625DA
            47CAB3FD7E48259CE2B503CA5D6F8C33448993E7EF81871F510C85FDFB03B120
            164F4FE5C0DCCDA3B87FC8075BDD612C9E0BA725981F1535CB64FA3C6AEA5C01
            CAE75D352FBAE000D4706390DD794487E62C7C61B7FFB6606FB17467FBFD9022
            BCBEA0C59D4BD3F03FBB1E74D173CAFE9E6E51EFDF0BB2FD6917AB84BFC178BD
            C58D92A72386CCF5CF325E03E5AF5F7618877CB2772498DF619646FABB5F883E
            1215E077D2D839EE920350C3B908A58372044683D2BBFDB150F64746B077F90E
            99F31EB5EDBFB63459F81341C4E2B78EE39512A419163CF5F581AC7AAA49721D
            C3201B4D1262D3EF390E30E242DE6B049D3F0FC9F4594C864B54A08B0E400D67
            310706FBA965CC9A14D940079DB37DBE70393AA3F54BAA05F690EA5A9B82B3E4
            B9204F0625517C0F57731A8F67D1AB6D381AFA9482673A8993AF701C939E19DF
            CC780D74907D81C338287EFED9796E3C8B38069827E3E73115B419AE730506EA
            4AEAE50070369FABCFF7580813D25B80AA816B0BCD41F8C117FFE3166B914BEF
            F6C7831DEFEF9CC7E43AC9FE6F9AC4984A9C68223CC551A054D3A261838A0C16
            3E0F795D60374D5269AE8D162A9D073A8C439E8E579F815E52695D34850A023E
            37C49C6EEBE71F783900EC3A0845E44E8EE80519C8DF551FC0A94ED725F241E8
            8F73BBAD4B4F6412482A2253D9FBDEA294CB43121BB9D21D337D163C3B083D3E
            CB693C162CB2D94745DB3F35D4AB93A7E2B53143A4E7804C73C789FDA73517DD
            3923D8A609E647922267F1A95B354F17360254D021AF3C69E2BC9703F0A4EAC3
            2004B171E9ABB75842482D284A5977969E8C98127692386E1E52A0A96087CED9
            F47509C6A68FBD472F7392C07E9EE9F3A0CBDF894E63B1E8A3419FB3C46A14A0
            83E0079DC69A6531093797360BF756D34E92CC1567E2AE04F3436720E7B1C874
            38DBE233E1FA89FE074F078085168F8D075989EE63E341E20ACD5A08531E6FAA
            276E1BDC7F78AA9FB27686FB6B5028E348E2EF89C63F21D88B1B8EC1224A8F83
            140FBBF1A0E46C4BA7B1E81AF8854CF31E25A82C6133B482D3780832FD22D3DC
            49FA3DC8619C943931297B3278412485E65CE3E642783B003524F27024D0A6E4
            2D7205089152C671B6D3758B66D095AF2DCEE2789091BE6F35CF81926B0600A7
            99457BC186E3A0DDDED489E817C2FE5EDAE538556B989CF354B0001EED3416BA
            00CFCF346FF4FCAF7118870DE99E09E749A221B92B4DA31529A16260331BA75A
            20950300D469E304BCB2F4D58F03ED22A9A3FC91C59A63911F2F0F3F05EC9A7E
            6C31B336F51112223A1E6A6B74FDFB4EE2B9D6B0EBF1925AE5F9E0B54089F121
            37EA654E63A186F7974CF326F2B672C331D8EC6D9461AE54C250C543E5D29332
            BCDFA01009789E8D390E48E900D4F0A1903CD2D6F35DBCA2DF56E6918825A606
            89514A7DDA143A237186F37316FD3F647C5FAF5EE8D46A5F9561BE943FF130F1
            68404352E51619E63CEAAC6DF139E7911098B347001BC8DD1A8E41646931CB57
            194377469A70B1C1D930D37BF60BEA9A3843FFA9FF2287030064781F6CF94294
            D385C8C031C17E136CA629233905F35A74B43CE43E3DA895B558FCEF2DF0FE1E
            DDFF48505C3AD37CBD048B8092CF7332CD7BD421E2F93A8771688085CE7E8E67
            A357774916BDB333CC772C385E380228072E56E0FDC783A4D0AFD67FC8E500D4
            BCBA7A73AFA49494706E4272169181E3FABC3E31355E19EF4D60A1AF77FB1715
            9E0BDA15331A8EC182BC7DA6F9E21C7B88CC50AAEB954428A6860C7E8EB63CFA
            D9739C705C8639B3AE208FDD3472C13367BF0CF39D08A20294E7E20C3CAFE03C
            002D07F22B6EE10FB91D80FAC340A0815FCABC853F8C7EA19C84FED23CB4085B
            5E686A553C1DD0B927B127D76E752C84F6894495DAED8F8516AEECA89A564090
            48E9718C301584FD118599DB612CEAD4676698B3988D47B409C88FF150ADEC07
            9EB54D3B6F92F8FDC64CF39D0A72287004287D2E1515F85F33B3120E400DCA52
            3CB4BC925372C2E281C804CE008D5028B150A7C2A92141E67B99DF93DFD5CFAA
            F76D5B8EC7E6169DCAA6F080CC11C920947998C33838621B6498AF783C84C2CF
            7418E76E8B49DE398E01C839786FC331D097F012ACF282CD501D15C8555951C3
            EF8F639CFB4B3A0035DC945FB47608084D171619F4984FA98C8546658673E259
            3B3E15AE5DB312B147B0FD1B8EC1B51149C81191F2EA84C643EFE00CF3157342
            DB660FE70BE7F5F40CF37DAB45A9F7263C126C216B6F4ED73383ED6CB1D369AE
            D2798EE38F6A830300CC837A55BAFCAD99E90348096152924EC8BAE40BC76234
            EA0D8B58A44856F3081F4F04791BF56EDFB56F76227E68B1B571137265D253B1
            F12F6BFE80C26161F7D186239851C42B0A873EC64732CCD74B269B84BC4B33CC
            B709440538A2C141F6688634198F1D8BB4C501A821D903CF8488C02A893F809C
            507681DEC045955102C702354AC70654809C9068EC2EECF6C70327B169F82F57
            5916254DE73A8C83D3F3B60CF315E3C3B39A0D4AD36E762CA66B67982F7962F7
            38CC9733F79F6698AF1774436573902A2A402ED6CA6D73006AD82592B441C942
            5BCAC5BCE11C86E8C0F995E110FCA3F4A412C2EFD233139787025F6842C95DD8
            ED8F071DBB9AD6D32347FADD0C7345AEF9330EE3D0EC29952328FA83CAA69737
            1C8375039DFDDB33CC17D5C9A667F89FB5283BDE35E8B15347053C058DF8FD2D
            D25607A086F96D6331D49443CDA934C815E359A3B47549F58ADD537A620EA0FA
            B7ABC3382490B1E01D6EE9E47973C077C6E3E149B7B33332CC979E1A2F6D3846
            CEE43131313488F1D80D530E7A4C86F9A2D8BA73C331E807F3A60C734D099B61
            9EA15460785410ACDF7607A01742A5940E72D379B5B8EC0AB36C4EC780238547
            4A4F6C003C4A90081FBFDD8623C192CE82E7398CC3827A6B86F9DE5CBD571338
            A2F1482214CD20EA441D78D3E7281AF87B65982FAD88BFD6700C8E5DBB9C68DE
            0B3934AC034DA3875B77C901A841F294B0275ED0E299DEB38DB08BE21C87662A
            578F799D65EDDB65D1AC66AB86633C96B95AFA429CF05039238290236BD8AB31
            0BC77A1E6584A2391EF5F5B9125039AE68DAD1EF468B8AB4C302CFC1A67D7676
            EAA2035043C6249ACBEFB0B89B12B321E990A60FBD4E41EFCF252A12D8ED36FD
            3D6D16ECF705E69E028F124042FF9B66982BDFB3C31DC69911ECBA0CF31553B3
            8F35DFBD93C3B24486B9D271AF699E0F09D788D00D4BD749729FDEDE708CDDBB
            EC00F4527762E27C6494A302FD42630C1ABADC54BD5ED3F373FD8A03E1595BCE
            1146D3124FFEFD65B93FAC44B0F8EFD1700CCE46DF9A61AE1E8BC5B0EDC0BA0E
            ED6B4F74188770F44D89E74A94CBE3980B39E4AB13CF35171CBF342DC3FCCCB0
            3800350B5B6C5642C90752A36DEA36D735882270EE4B65025F701A25F125E4F7
            7CC73876A7F574991A07220F4F6B38A7652CD6A20F03ECA85FD3708CFF497A26
            C6237FE317C15E9B61AEA23FBC16558EF54E493C57D629127EE76F380E79641E
            A5AC6D80C5FFCB0DC73870D81C805EF04C79E0E00CAC5B7A32230259DE3803B7
            DB6CA7A0761090F35CA4C1D8DCA794C4B42DB761BA2001BC79C33172F500A0F2
            62BD8663E0A87C29C35C45FFE0D42FD7708C5CAA8E575ADCC1372157D5420E08
            FF37FDDC7F36CC0E402F944F907D4CF9CB8CD29311D38252C8454B4FC211FA47
            341552E19EFE5986B9E2D03DA9E118287D364DE412BE78E801703CF4B10C73F5
            7098392EFB5186B9E68004C0A609D1278E8A03D00BD180ED2C3E90DAD620424C
            CC63CA55A527E10867E24F6D38468EF02BF5C61EDFED613A7F1D163CCE91731D
            ED1C6ACDEBF84BB705F684E4DF990DC73877141D805E56B4E80C2036C4079A52
            A75E342397F4682EA8C4687AA689037B49E279AEE5F01E8F54D7FA9F86E3085F
            DE13EC9B0DC7A02A67B30C73F5E80A984BB7200794705ED8708C8B46DD01E885
            7216C2612FB158DBDA34E4297CA12148D373E8B680000B1516FFD7709C1C4991
            88A734551A5405403B210A7A74C33110255B2BC35CC91FD9B3E118DF09F6AE0C
            73CD818763FE173900E3C3039AA3822D2BDBC49A37A310CD207B3777DFEC54D0
            9AD4A31BDE82965ED381E858D3C4296AB89F9D789E627070A8FFD0700C1CD065
            32CC151DFFBD1B8E314C8DA86821FCD786635C2907A03F282FA4AC90DA591C82
            67949ED008922BD4980324756F7618874E69A9AB2248346CAADE47BDF94B12CF
            530CCE8C60D7361C03619DF932CCD5A3EC8DFE076FC830D71C78A8735E270760
            7AF00047D58E9ECD3429DAC01421480D52C22F2E3D092728BDBAC1619CB92CFD
            B93A21D36F351C03CD83D7259EA7189CA5ACF91112EBC7132D7D7F8E77073BB0
            E1184758733D8BB6E0F10CB9490E800F84623932A81D02CE4D87A964AD0DFCCE
            9A972CB505342A9AB67E46DA3487D0D58782EDDB700C22086FCC305731184436
            3D3A8D92E0F960E2B952C2F78386637094F58AC4F3CC854714F176390069A09A
            00D95A3235D7AB5E49DA509460FAFCDAA2CAE330E0F1E525B33EC7FD84D8D057
            1B8E7148B0B76498AB180C1C480FB96F363BA95B96536AF8F386630C531491CF
            FCAE8663DC2707201F846BC91D58AFC7700CE62D3DB18EF01B8B259BC3006D3C
            6F6B38C603169B9BA486D2AB6F341CE3FBC176C930573118ECDC3D92487324A3
            22E2F6D386639C106CEBC4F3CC053D6FEE6838C6DD7200CA42F20C2A856B54B6
            66F53AA3F4C45AC8307D795DBC778B21DCD478E400FCC49A8BB8087FBA940340
            04E9870DC718A663C4A5AD7913A65BE500B4131EEC38061C1BD48E01651F4D75
            BBBB4CAEDEE33960C7745FC33108DDE610AE42EBFDA086632039BB6D86B98AC1
            5825D8550DC760E7BF6086B9D2F6FD3B0DC7403AF7D519E69A0344EC66351CE3
            1F7200BA0567BE38014FAB0CE760F5EA676E8861EE7E7896C5E4CA6180C8CF03
            0EE3A027F0EFC4732579EFC70DC718A612CE6182C4E53F361C833E114FC930D7
            F759F3C657C3D49172D5607F6B38C635720086077209A80D45731D8760058B5A
            F3CB573F13329AABF4241B80ECE5734A4FC209AFE42B7EBFFF4C3C5792A64E68
            38068A65EABBD13E3CF4E429455B21C35C51016CDA4DF2101B9E6454A2C29736
            1CE30A3900A3038B0E8A5D7C5997AB8C9F7110700E96A8FEFB42A5273A0174CF
            5BA7F4241CC101681AB121FAD3540D6C2A3C7689E43B2C9E789E6270D06668DA
            4D329744B78714F001C1DE9F61AE39F05071FCB31C003116C2D3380338054B56
            3FF3BA54F5736D3CD04966A35B5C8EA3872B82AD56FAC37184049EA51B8EF1BC
            60E7259EA7876601E819D13EF6B628B1DB845CD53954923495F1FDACC3F5B605
            64D1CF6E38C68572008407440D7004169DE0156BDA7694BAF9A60B669B20A2D1
            B4BB21F2BA27269E27C746C80D376D5CC48EA5692441F8425D7DD33371D4F99A
            76E9EB0774409A3A1A885AED9F61AE397869B0631B8E71A61C00910B846B9AE4
            20F0EFC973485D6E948B932DF69568020FEF5F6498AB47B48270F3E119E62AFA
            E7226BDEA489F6BA4D35FAFB818E944D93805113FC5186B9E680B2DA431B8EF1
            1B39002217288535AD5B27927077E90B71025193D7371CE3C3C1F6CB30D7D3AD
            79163F3BAF0F6598ABE80F9EFD7C279BE6FC700F3755E8EB078E009B366163D7
            7C7C86B9E6600F6B1ECDF8A11C00910B0447966A38C6CAD6BC03565B405EF703
            0DC7F8B6C52629A94108A8691FF5332DB6D516ED80C5F40A87715033BD28F15C
            59A7D01B68DA759084D68B13CF35175F08F6B18663EC270740E4E2EF16CB139B
            4007C60B4A5F8813844EF76938462E75C4F704FB66C33178809313E251FE289A
            F34E8B0E6413F85D12D54BDD08C82B11952AA7A6CA876D0151A477341CE36372
            00442E3CCE1B872984E7216D7AA5350F8BF6C3E6C14E7518071D870B33CC574C
            CD2FAD796B5CEAD09B26B2F6035D56CF6A38063944F43E48DD3E3B17B4366EAA
            6AB8AB1C00910B1690CD1B8EF1766BDE12B42D90C1DFD49979C86243A0FF269E
            2BCD8B6EB5E695007B07FB4CE2B98AA97982C5AA9AA60A7E2844BE39C37C77B2
            D852BA09442057C930D75C9C63B10CB8093BC80110B938D29AB7F3E5FC9F074E
            D3DD401B58C97CF2191073BA21C37CFF62517ABA09E707DB30C35CC5E4A0CAE8
            71164E22DAD732CC97FAFD4F361CE394605B65986B6A48DAA4ECF28B0E636D2E
            0740E4C22391AC86D0E3F72CEE0A9A76D52B05BBB07BAD794B5FA22AA76798EF
            7783EDD6700C22159413DE9A61BE62623E653E91985C39391E1A00075B6C6CD5
            55D0D1A0A53655175E5D409F210740E4C223916C2C241F1D63D11938A5F4054E
            038471D66D38462E71138FA640C07DD0B4BDB068064D64566D38068E37470839
            CED43D128873E9157842CEC236161D97A69A2163A119D9C27200442E2801FB7D
            C2F1890AE0E5D37BBE2B510122183B351C8364AED76498EB8C60D73A8C334C4D
            9DBA8887842CE46AADCB6E17ED8FA6F9272CA44D95F372C16E9F45FF75E6B7DB
            1FCB63DF4339002217A8F8DD126C91C4EF43621CFDE7890A9078D866E5C08F07
            FB7CC33158949BEE8EFA85C643CF7418672D8B3905223F1EE563F0AE6AACD478
            392CE4DCCCCA30DFE9C242CF82CFC29FA3B9D2637D11E400889C78688F0F0242
            278758AC1CB8ADF4C58F034991473A8C83C0D22D19E68B6EC15E0EE32082F4C1
            0CF3158F07211DDA477B7466E408E1AA0C73E63E69AA7649AE0D1A146DDC0CE4
            D8ED8FC763A2487200444E3C4ADFA603E75DBFB21815F0D84D78C16EDAA39DEF
            CB821D9761BE84EECF7718870732D50B5D39AA1916508D3CD0619C4B2C5612E4
            C0A37AE85C8B9184B6C0424F321F0B7F536D94E94005C863B9477200446EE861
            9D23C435112440D110A40D51019A23A1C73E7FC371F6B63CF5F53C2FAE0BB6BC
            C3587487DC37C39C45646E8BC251331CC6FA68B02F659833F71BCA7D4B361C87
            E4E3DD33CC772AEADD3E8B7FD31E0C4DD8D1E286480E80C8CE2B2CF6102F0D15
            047554A0A4AEC0CC609B361CE3A4602FCE345F1EA6EF711807695772171ECE34
            EF51874E781E225AAC17F4E4F048089D0A8E19FEE6300E9DF37E9261BEE341CE
            53BDDB6F5AF1E3016DC8893A3C261E26074094808577FBD293E8A16454E073C1
            3ED1700C9C19D4FAEECF305F76317F701AEB7DC1BE9161CEA3CE13835D6ECD4B
            FF2067389DBAF7EF398CB39AF9343E1A84B6ECF67BA17703EA81FFFBFECA0110
            2520698D73A8A63DE6BDA9A30294139E99E93DD9B99FE0304ECE32278FBE0E80
            B3F574532E406A90D03ED8692C54E83CF208FAC1E3FC9F7B0BE738B55C36B0DB
            A7AC97857F9D0CEF37286C363ED5FB177200442968233A33D882A527320124E7
            A17EC783F38184EFC343E30E8BBBB42620AEE3119AEF07CAC8BC4AC0BE126CCF
            4CF31E457836B3FB5DC2612C9237C9FFB83BC3BCC98FC1415CB4E13894046F9B
            78AE4864D3DA9B0AA7B63ECF7E61B1D2E071EBBD1C005112BAFBD1D5AA69125C
            4A38AB466DEFF084EFE1A10898530F00A78572328F871D5117764B1E67BD624E
            08A1EFE23456CE643AF262663A8C4319E15713CD91EFC1D72DE6183475E05342
            8510A24D73B46D9603204AC399145E7AD3CE6429E13B42E8ACA968CF441C603E
            0FD69C679D5E82324012260FFC1C61DA5182C64B94BD3EC1612C7E37DC5F5766
            9A3B55061E9121228D1725981FC7972CAC6D48EC9B8CEF077BA7C5F3FF399003
            20DAC08A166F546FBD6B6FE844E8A1873F16FAB2FFD2619C94BB9DB1A0ACC6AE
            7D6EA7F17080BC7B458C32286FA2D9E055AFCF62F7B28CF34764A869FB5ED624
            8E3EBCFB15B0DB9F196CA38C9FC7A090FBF0FE60874EF63FC901106D817BF16D
            1677DA1E75E629E04B8578CFCDCEE352E74C48BD691891DD5ECE871295133B3B
            8D759FC5CCE95C3BCC618744BD773B8E4784E68C4C73F7AA3449D52783EA95AF
            67FA2C06E591603FB52833FECFA9FE673900A26DCC63F14C0DEFB569FFF914A4
            EA2AC6C3756387717050729DA7B343E3C8C1EBFC93FE00B498CD51CE38CC5062
            FB2BC7F14EB4A8E2990B12433FEC30CE5B2C4A817BC29A497462E58C9F473F90
            984973313A83F6ADD1200740B49917582CA92144DE964441EAA95338267B984F
            5BDF394A7D12F3338BD9C55E1C62F1C12DA6070B1367DE4DB3E76B581F9080F6
            D27E980AD6A46BACB96221F35ECEFAD8050F08CFA492C26163E19887444FB2FC
            FF3DE83F960320BA000F3342797420CBA5413E19293A8B91C1FF77877198178B
            40AE843AE67D99C546335EE4EA34376CA0314F24C9B306FDD7D6BC167F103636
            9FA3061C960D12CC8F44E08F67FC3CC603F970AA922853FE539381E40088AE51
            2B6C21B851AAE6965C851F26181771240F07E785E65342D52F5FB4A80FEF0549
            5B2C3ABFCD780D5D87A33384A03C1369394FC699B83CE3759064FB4687715225
            C4B2E37E4EC6CFA317223BECF689BADDE731A01C00D1554A4605F802EE9460DC
            BD837DDA619C432C6F181DA953F20E96751C13F1A5ADAC5DDD1BDB0ACF71B2BD
            3D16CE5E68D6F4918CD7C1779A90FD020DC721FA4565D18DCEF35BCCA23851CE
            9AFF7AB74F44EC62EFC1E5008861207754E0168B75C0DEFDC5D96D350AE955B0
            3B58C69C76097DC2E2E35D2279BB4527C0E3331966BC74247AB9DE62AE4BCE7B
            08254B8F52D0DF07DB2CC1FC884A1D99E9B3A877FB64F40F7CB6DF2F7200C430
            B1B8C5850867207505014EC71F138C4B02D44A0EE350457140E2CFA0179E25A7
            5A3C7EF084E70A19E81764BC96AE80C0CFD72C8D3ADF7696B76B27F7CF25C1D6
            74180B81AA8312CC9131774DF81950664C263F0BFFA509DFE77FC80110C34AEA
            A8C0672C86ECBDF1E80E0837584C067C24C11C2782B02B0FF1459CC7250C8A08
            4D9BB2AF4BC3993F61FFD726189B857FBBCCD7B3B545B1A1A670BF13FDBADD79
            7E385B3756637B9365B73F1E7200C4B0932A5780F3B81432A02B588C02789C33
            D28AF4E709E638195E7DE7C7F290454DFB527DDDDB043917D4F9A7A8CDE7788B
            EFC9BF325F13D1A3CD1DC62111729B04F34356F95CC7F1A8DBA7742FC9D97EBF
            C80110A384B7AEC08C60D7259827ED815FEC30CE9F2D3A29DEB90A53718CA579
            08731D94617DBAC035B505A23A34D04AD16E96CF949DF88999AF0987833C8FFF
            7318EB0D1677D2DE7855BA9C67B17C0F95C2945D46FB420E801845BCA43C53E9
            D77B261B9144774A82394E060992E447A4089702E581441ABCC3BC6D07C795F6
            D45E223F634188EA4305AE8B2895C751066DB591114FA1244929E46A0DC720A1
            92DE040F361CC70D39006214E1AC1AB9CCA63B0E044B364D303F7AA19385EDB1
            80E69671AD797EB0D32D9E55A78036CD6FACDE63D8A1B10F8BB3A7B6FF5810CE
            2142F670E66B235997BC118F8E854874EF95608E2CFC1E5A0884FC53E46C4C1B
            1E80886E34FDF0F16A6E2B7D31420C0021C7A66154EA8D67584CB8F3661FF379
            98E1E0D372F9FC04739C8ADD2C863B53C1E74F163C47025993A732C2D9339F61
            4AAD8B9B2C8ADB78D7CDF703B90CDB3B8CC33AC6F1488A23392FF53F12927F96
            607ED3060780B0C9E20DC7C9D98044080F5834F6761807A1947D13CC0F895D9A
            8E78EC8C387764475EE2DC9CECE65D12BF07E2319CCFA668D55C0A9EC97B5BDC
            F5A7149E211C4DE9E67905AE712D8B09701EF73847661E8EC47878B426A63A81
            AE9F77259AE3B4C001407FFC690DC7C9D92A52080FD8517964DF12497876A239
            12BE7F91D358AF0E7654A2794E06E16B921A37CBF05E6480E30864A9A14E048B
            3D2A8E44809E92F8BD700869E4F48B42D7EA992CBA994501206FBCB2FF4F36BF
            EFB21B3800D420367D80A5D25D1622255EA23B9C63A6D04BDFCCFCCEB8B956CE
            32739FF102BA00A759D466480DC7022C684478AE2A70ADD3656E8B390D1CFB3C
            3DD37BA237F18542D7BB85F925A7D2467AAD44F3FC46B0F73A8C83CAE1B712CD
            71DAE00078EC32F0E45E51FA628418109CD60F388CB39FF9F42F1F0F226B1B3B
            8D95AA6AA11FC8133A33D83332BDDFA3163BD9F1006FB380105D14A968E02869
            C58CEFFB25F36DE0340824B95225E2B568A76ACEC5EF8664D327351C87480BFA
            1E25722C2605078087D7071B8E433D23BD97EF287D41420C004757331DC62101
            96FBFFA10473440FE004A7B198276799772798673FF01064315E3EF3FBB2D890
            48C739711B9E513C7749CC64C78F4855D31CAC41A104D6C3F19D2E5E9AFF8060
            1147D8296AEA11D2F2D014B8D0CA75109C146E44CE803C3213F7B098912B4457
            E0BC9504B2251DC6DAD16246730AD0C1F7EA6D5EFAE14FA636E7A11E472F83C2
            F107114FBAABE154E5740678D6AE1D6C5B8B0B7FD3A4B2E9F26D8B0B70292125
            22415758F35D754DCAA896973A2191962F259A6323B82909C95DE13016678CAB
            5B9A5D9010A9A0BE7A0F87715226F9A0CBFE6BA7B1382327F251322C4EDB6016
            628FC62F4D3E0722039C43CFB4980BE55DCA4C75D40B7B2C7552DF5470E485D0
            4F4915459ADD78B5D2A6E48FF52BC59A838376A535D70AA13C7186B530FC6FD5
            C55182C18DEF1186DA33D8574A5F941003C022E49135CE82C2C3E8EA0473E47B
            4AC5C2DA4EE351B28B0642494532768064ED6F58700E63E121CDE77C79F5F375
            D52BA55B34247AB4FA997EF50B55C67373618BEA87FCFE59F457AD6CA1D21754
            C1BDC9C25F3A428B20D5F18EE3913BF1A34473651DF3C8EB2925C4D517B577C3
            87B8B3C378F75ACC34FE47E90B136200BC42EC842253B466058E183CCBB5D036
            F7103769025D1AD1447F69E1790C33EC8EDF6CE54AFD6A7086C8D6F74A74C489
            C5797F34D15C11F75ACC612C8ED80F4F3047176A07802FE0B14E6392B5CCB9C9
            7F4A5F9C107DF24E8B67A34DC10126C12D45921DDF55EA919FEB341E0F4E1293
            FE9460AE8340049216C81F359F6630623674F6C3714C511F3F2894C0BDCB713C
            24755339355E498A3C0790F32EDEF46722EA2F1C7ADD64537A65A35283FBD9D2
            1727449FE0E9930CE8D1213065322C75F4442B3C94D3000DF6F52DAA9495E6E5
            165BFDA66A74336A90794EF3A014D2B88342874136985E0E1E47761C61FD37C1
            5CF96E9113E7A1C540AB5F4FA7C79DDE5F086532BB398DCB2F060F2D5556B410
            DE5009F33A87716832C4C32355040CB9DB373A8E97AA81CA7440508952BD5C5A
            01C308097E24FBF13B4D111E1F147223684BED51695343C4DA3397A0171CD1DF
            3A8D4584EDC244F374A1D701A03C07CF672EA7B129B97999E56F452AC474A06D
            EE494E63A56CFA41063DE79F5E09662C1894A61D9368BE8342821D2553846175
            24301884FC770DF69BD213A9E0F7779CF926C11D1DEC9509E74C75CC0B1CC6B9
            CCCA56B9F4C5D82F98D72EA8863310BCB5734A5FA8105340E88F52568F2425BE
            FC64ECA70851C2C7CC57C295CCF6F5AAEB6F0B3C840FB5B831115343B495C641
            B7969E480F24997EDE71BCFB2D468966259AEF66E627BD4DD5C5FE89E6E9C658
            07803A7ECE57BCCE18815F1A1E9BD7EE4A885420C7FA65A7B15E657EB5FB6321
            67878C6A4FCD78C2B4A8D3B52961891E02745A7CBBF93E93860972574862F50A
            5B7B81D63F25709E9D0C29CBDB2FE19C4FA9E6DD145A53B391B83DE15C5D182F
            C44622CE1B9CDF87529437592CF911A2AD900C78BDC5BAEEA6202CB37EC2B9E2
            601CE93CE641C1DE9170CED385E8C401E6139A1D163862A572E533D6B216B316
            173FEEFF273B8EC9C694A675A9F21AA8AEF16A899CB21CD895F11C009235FE6A
            7E528D359C3512B6FC949555A2126232BC1A04010DB2529EADFFC6FC9B70D18A
            F69084736E02095A34F799517A2285F99DC57B3485E85453D076A014DCB34536
            EB050DB1CE4E386FAA143CF42848FE2589F5EF09E7EAC644493684DC0E4EF49E
            2471204C714FE98B17621CD8BDF060F54886A5CC6E5D4B970B408D31F9069ECD
            642809A4477B5B8FEC481224D18D70F0B2A52793191656B2FB3DFAD3A780631A
            A252DB398FCB5AB46BC2796F627E5A095CFFF609E7EACAFF4DF2F77C205E6D48
            C742A9149D96BC422E4278F2738B65AC1E50B27758C2B92287FA03E73171CEE9
            177071C27937853C087E47F4B4F7CC85681B388F64D25319917207EC01D199F7
            3A8F7993C56CFA948D9BBC32FFAD1AA73349EF9395D9A068C639CE1289DE9BB3
            1CCEAFF631A9068A76812CF0054E6391598F3CF6C389E6CA7798F0E5D6CEE392
            5CF67C6B8790CC64CC6D51F0060D938D6D784A07E9D380E348D2DBDF4A4FA60F
            DE6FFE0258383FB4C34E594AEE59F7CF86F67909E7EACE545F962D2DB6CDF4CC
            E41C0B42091C395C52FAC310A287991677C11EB02B3A30E15CC9DB218B7F69E7
            71390AC109685369D964D080E7AD95A5DAB8A4864D1789D8F4A1F7EE4E980A92
            C629D9F4AED4A021CF9E09E7CDBA8614F65A4EE3E1881E9170BEEEF4E32D7BD7
            728E07E78E5FA9DEA7648732216A3C77069403B138A50C636E53CDD77B074C78
            945DD8FD09E7EECDBC16859D388B2649B2EDCE00259D47595CF8DB98D8371954
            A3A0C9EF252057C3C690707A4A996A2A5EBEE33416913EBEE39D8A66F7F3B0E0
            FF4120C8EB4C7432B8F93F68EDAB6915A307F73DBBB1759DC62302E07D3E3A16
            EF862B35E403E160DC9778FE296097471403B5C317067B96A58D68F60375E284
            B58FAFECFAC2F3992E28FC5189328FF3B834D5A28A20A53344C9EF95E6E71CBE
            2DD80F13CE3709FDEE16386743D4E46599E6759AC532171D0B889270AE7E9CD3
            58EC0C70262E4D385F76BE248AAD97606C129B28934AD1E93027683CB0B3DCC8
            A263408259CA0801E7D848AC5FD8632457A6CA09C9058B3F510B8F065A63A14A
            ECC789E7FFF560EF731AEB2A8B227A6DE8BD301083840B29BF41D969A34C73E3
            C3C4A3A255E88D993F17216AD8FD6EE234D6C9C15E9478BE2B598C5C789606D6
            B078F1E04F79945102046B56AB8C8A027229700A28B35CB2FA79BC10378BF83D
            95DD69F1CC7E96C570706D2C0EF796BE406708FB5329E3BDF307A2CD3B259E3F
            75FA38E2733B8D97B2357152063D2F246CC2432CA5C2D958C809E09C866A81AE
            242389E10187F74CC7F1C8124E5DFE4AFE02A1D91419F1EC5E716246F9BBC866
            08719A36C926E782B2563666DE67FE40222BDFB7D4474D3F0AB6B3D3587C1F88
            B8A5D2FA48CA741E1084D010F3D93CF35CB92938E32474F3AFCCEF2D461B94D7
            BC8EBFD839BD3EC39C51DCFC4CA2B1111FE278E4860CD721DA03A57E34B849D1
            9781673A72BCA9F32188E61051F68A5E901B736CE2392763BA3B043E3CCE685E
            5360CE84DD08B75031706581F717A307654278FA1E0F3E1E3ECB679833DF6D4A
            C93CBB7BF642B89B50B0677444B4139226A9F14F95C44A949704CD1CC2702CD8
            5EF2DCE4DBE43A124F4293102137054D0FDE5968EEE40850734944E0FC427310
            A383A73A20E7F3391AB890A03533D873128D4F932F343C522A1D8AB2A0EDCFB9
            BC77CF891A8E523856F869A6EBF1ECF889D33233D3BC93E0714648D911DE618A
            84907E41B50D194A7A62773DBB56B41392C3C8E6F688022C6AF97A61A0974F06
            FF8A89C6E701FE598BC70D6AF2355C70CF90E9EFD9D8672C24797F2AE3355166
            EED15278A64507A0D3782509514EC3E25BBA3907E748DFB7A88D3EABF05CC470
            B1A1F9346161D74C1259CEA421B2DB11F4F1EEF0D90BC77228F0754930484C0C
            899EECFC3D5BFA8E85358363E49C8E23DD2E3DEAF5A9F06053D0C9E4BF1ACF2C
            614A677E69E91A080D02BF94532D3A03242C2A2A209A4288D223790F0198AD0A
            CC9FDA772A7852D46DD75C6E31E740FA1DDD8535E1A316A33A2905934EB79858
            9BBB926286C566741EA46EF79D1CEF32214A433E66B14397578D65532857C293
            E5017E61E9C9884E423DF82CF339E6DADD62EE4C09280FA45D69CAEF26095D9C
            B3A27CA823816EC1268E12B997247E9FB3AAF7F877A1EB44FF7F1D877172E87A
            242555E7ACB52DEA5AAF5DFA02C74067B3C32D1E115C557A32A233B01BFAA4C3
            3884C7A9002829A4934ABB7D2C2759547453C96E3760213BC4A2B39B923F5A6C
            327767C16BA573E4779DC6A242E82F05AFA511295B67126AA487F57B13BFCF74
            606742E2E091955D537A42A2B520AF8BE3B894C35807596C40521AB2AE0FB134
            F5DCBDD0CB1D27E0E4D2172C2664218B59F15473A57E4EB3F86F61792A602683
            CA06342C3CD432BF1DECDD85AF67DAE45898397BE4436A5B34A0176ECCDA19E8
            42EF6D910F164B0F5D729C4EBE036DD92D900C75B0A56F8CC375F3F97DD8465B
            3DB08D20E684CA6AAA0A915EC80B413CEEF6D2175D81A0D11E0EE32050B79C75
            B44746AE9D39E146BC2442A98B94BEE829201A40A216EA6FF43E5002E16843A4
            68038771484ADDB2F4C58C81A446FAB8A73E0E008E3DF6B29898ABDC80B2A086
            47E9766ACDFD1A92432999BBA5F485F730C362B7410F071885C4034A5FD074C8
            1D9A7FAAC51B6F87D217DE2784AA700270060863DE5C7A42222BE8F69FE334D6
            2B2D56A4B48D948D5DC683CF9370B32A05F283A3C711149A0D294B427BA13115
            5D24DBB4F8D7D076FEE50EE3904FF64CEB604960A9B379349F3977DAB4F40730
            207574003BC186AFCB97783C248C7AC85D9343B0B2C596C06DE4C516553517CA
            F47EA8785225F045D3B1402E283D65F3B546C6F79C196C5BCB277A35287C2627
            398D4549A357EBF06C944ECEDBCE6297BF6796FE20A601E54E94B3CCB4D83296
            50B18E0B8607A255D40B7B94CCED19EC2BA52F680AE8684653138F64C77EC181
            46CA9BF3D84E9EA17600CADD50DBDB26F3FB12ED4213E2C1D21FC024B0FED1D8
            6A3587B1D8106E5DFA82A6F3019486B0D4DB2CEA07AC507A320D40D002A5B833
            2C3A05680E4815ADBBF0D0FC84C338DC172409952CFDEB17A214C75B5438CB09
            9F0D0E12FA08FACEF8C04E7FEF60AFB6FCCF799CBA0F597B235EBD909B76A0C3
            38E4B5B091ED5483BA36380035ECB4F0183F1E6CD5D29371809B9F8A828B7A4C
            51826EE059FA47A6FDAEA52F6800907EE53860B302EF8D6600A5C348B5EA786D
            7AAC6BB1E282A3ABD4659E63E19947429CC7829A0B8EBDE8D0B9A8C358F4A379
            5FE90B1A8436390035DCB478AD24AA788466DA04CA57B495ED750AC890555674
            BBF0D20B876759F712DE70C6D98DEF56E8FD390E40918E85E4EFA53F8C0EC073
            9C3C0E76DD5B149A0309D3541574EE1CDC62C4C263E1C66925DAD7D69C873968
            A30350832340E634BF9836F4174805D9B11754861E016752EC3EE5149403C7CC
            A3031AC7415D4B74ED85F0288963A564BDC9AA262F819D156594FA4E3C9EC582
            BDC1A2A3B666C179A06DC1B3FAEAD21FC834F1ECF489F05D6722206D76007A21
            AC45F9CA9B82CD577A3219A0631C3B1F9C01220417553F9394A687605A7036CF
            701A6B7B8BE2525D8652489A7C2D57781E7C0FD02C40C6F8BAD21F4A4178666F
            146C178BF757CAE64EFDC0BD410ED77D85E7D11422171E497C9D2A09EC8A0350
            43BBE17759BCE1962E3D9902101AFDAB458FFBF29ED77F949ED810C102B3A3C3
            38488D3ECD62C95BD7798AC5DE1EA99BC4F4CB45D57CF85D8D4AAF0192FAD04F
            41BC297792E678B049A1BA85E8CC306C4A58FCBD8E2F388EF12A2F4C4AD71C80
            1A42920838BCDDE2879D3BD9A56DE018A051408460D698574C99D5FDC12E97CF
            CB43198FAA967D4A5F90237CC7E8F2879A675B3A7D92748626C7511685BABCDA
            BCB6013EE3E75B5C98C8895AA5F4847A20B9F9B516F3998605EE6F8E013C9C2B
            84E33C048692D35507A017A202E8B5734430A3F4645A0A9DB7AEE9319AB4FCB3
            FA999BBE545BCEB68130CD471DC6617744496B1BD5CF9A825E00ADB59F517A22
            E3C0B1592DD4759A75A3F4B217AA9FC81921D2826C741B65D39172FE80753FE4
            3F1EB4EAF690F4ED4C49E030380035787078CC380378A76DFCF2B415C43A7008
            700CEE9CE0675E299719D632464AFFAE0FB6A4C35864B0BFB5F40525648160FB
            5A9E0E72D3853358926AD1E6B8B8328ECCDA72FF2E6CB195EC8616CFF4699AE6
            71EFA582EF3F79075DCCF2EF177E273CE33CD60E92673D9A0D25A5AD5FDEA690
            18F30A8B65291C11E4D2391F05E8E6754B653755AFECB42803BABB7A1DFB73C9
            DEDFFDE259FAC72EF98FA52F2803EC56D911B6293C3D198F58CC99F993C5D24C
            B2D6C9D5E0A17F5BA2F72442B95265ECF059F4D7AEFEDC95E7EF6116ABB1BA16
            51990E64F07BB4F7E5B9C79162ABA3AB5DB9019B80B0C9AB2AA31DA59C81323C
            50195F8CFBAB9FEFAE7E7EA8FA7B42670F56FFCD7AFEEE211B3F8FE1011B5F6A
            94F3D3B1BAF638855490D0FDABF6F0EB7EE08880B003F3C8743FDBE28E6E5420
            1A405E000B448EAE82A9E05EAA9D018C5A6E1EDEF5FDC9BDFAA8CD962CA6048F
            E7677D5FF167BAEC3DB9327E9E61DDAE5AE28890284F2712DA9C20748F93E8B1
            36F2D97DB7F4054DC6283800BDF025A50104091AD4ADE66A7E22460714D87E59
            7A12056057FB6D8B8E94E836444ABE6AD1B11BC504621C9EAD1CC6C191409FA1
            B55512A3E600F4B2A0C5641BBA38D1AE32671314319C704E3AC3E2037414E179
            F2668B72BEFA3E7513CEF839BBFE5BE98914840DE26F9DC62299F3D4D2173411
            A3EC00F4C2E7C0B9EDCB2AE3E7512F2D1483F3298B4D84461D92A9F6B2982D5E
            5AA846F407FA222CFC27949E480BE0D98FA0CFD31CC6221AE8D1523C097200C6
            876C5C9207F1DED0D67E6AE90989D6C339F18AC16E2E3D9116414EC5E72DCAD5
            3EB1F464C4B890F740DF1554168741B4CA0B9CA1FD1DC621B704D1BA56F60790
            03D01F2486D4CEC06616730984E80565BA37959E444B415C057D051C81B68808
            8D3AB75A3CAA216FE3C186630D233CE349065DD0612C9E0B3F297D41E3210760
            70D8C9D09B60E3CAC8F85EA2F4A444719E13ECC2D293683988237DD0623DB98E
            06CA40D9EE772C26F9B57257DA22C8E0F7E888C9E7FDAED217331E72007CA06D
            318E000E0159D01E6747A23B9C67B1698EE80F6AE3695DBBABF9ECB0C4D4A079
            C0A28FD6C543A527D311E8BF70A9355F27E95DB17EE98B190F390069A0AE7C03
            8B4E010985A87D3DA5F4A44432109CFA59E94974102267ECB0E8E9B162E9C90C
            294822236F8B3E7D273AD4B50C32F8376F38067A268B371C23097200F2C0E78C
            0A186162FACC7384B08E454741741B92FE086DB74562B68B9075FD228B470394
            60294FA0192C3838A40759543C14D30701B9A62DBD71BCE6B6163A607200CAC1
            678F1C68AF43F02C53C541D73836D836A52731442C136C678B51011DA5F50F62
            336704FB41B0236CB69AA6680691A9590EE3A03E7A6FE98B198B1C80F641A868
            8DCAD6AC5ED10FD711423BE141FBC260E7979EC890415480CF75078B7D3D9629
            3DA19642932376FBBFB0D8CC4AF84295C43B1B8E41DB6A24E8150110D386F3D2
            D52D1E25D4464B5676490A999685CC6A3A51FEBDF44486149C81E706DBCEA284
            B747CFF6FFDFDE99C75A561471B844858160181605155C089B8008FA8710094B
            4450104551A30664135C405609665C181744513695684065407089A383100544
            0502685412644460DC405945869DA84C50FB4B9FE75C9EF7BD7797EE53DDE7FE
            BEA4F22ECCBCBEDD77CE3D5DA7BAEA57B5C226F2AB603F087691C576DE220FC7
            073B25C13834502BF2014E0E40FDD08065AAD3183F0959BDA0E7A79E9CDA81DE
            DF3801CBBD2732011015C319E0E88524DBAE3BC05C5324F3A1514F32DFBDDE13
            9A0068294F6425C51E4974707BEF05F5430E40F721F484221BA55738031B4F33
            9C849ABBB895044F6684AD27B1818A177423E4E63AA5C9C1EBDA9B7CB1E1FF22
            D8B516B3D0692D5D5CF8B8C3EC64D1D95A2DD17854611CEDBDA87EC80110081B
            91788823C031C306CD4F6CFDC6D6EBF97F627648C042FB5B376C1F706649AAC5
            19E0D8608BC652DDCC534362D88DC16EB0B8D1A32941239E623BC8751C8E5971
            BC5296EDBD2DD877BD17D60F39006218B8B9F63A07CFE9F96F5E53D648B6EB9A
            8DD114667EF37A55EFC9B7C817831DE93D09F13F70725F64F1E68E68170EC156
            CDFFE3DACD7D1FA444F4AE607FB1785484B1C9737E4FDE8836FB322052CAE69F
            529302078F87AA22A3827200445BE000A0FA8667BD668FF53A0DF39ABFCBD3DA
            1A3DBFBB7ACF9F59334EAF43C1EF4F359BE1C9FBE19E3F43EEF4C9E6355FC229
            15345AF63ED6BC26D967DDC4EB3D39D882563E59310E5C37D3235E530E6DEF35
            C1F5383D8A40EE01D7DA238D3DDCD8433D3F69B6738F69932F1DFEDD29A3DC2C
            F1B8E7063BD87B713321074088B8519F9461DC8F641A3735DC07089B536ECA46
            F7A0C5F23285A2C5A010E943EE96C80ACE350E11898B777B4F6C0070F4AEB478
            FDA784078F6D82DDECBDC099900320448C20DC166C9D0C6393FC73A6F7026780
            BC0F9A94EC6F3149743A37596C897A81A955ACE80F95472758EC7837BDC113CE
            230DB268AAF32D2BB3EB2011C89F581EADFEA29FFE410E80101136C1F3338CCB
            4D10BDFB73BC17D8C32EC13E10EC8DB6F2E86436700470647EEA3D71510CE4F7
            10393BC6064BB0BCDFE27780CE7877784FBE81A3C4CB2D36704B0DDA2028BB16
            5DB2290740889550F7FB8E0CE392977048B0458E6B23B44FD32236FE51439D4B
            2CE64B48F0687241940967991C9751344688242160F4A560573BAE83CDFF621B
            BFD14F3F70FAF70A76A9E3FA06420E80102B211C4816F0D619C6C60938C2E213
            509B10A245CA140724C511074994DCBC3F63F1A94E4C0EBB59DCF85385CB297F
            E45ABAD0DAED5DC0911F3D3C76CC34FE27829DD8E27A46460E80104F054D0444
            5836CA30364F063C419FDAC23AB8B9518A88746E0EA1272A28CE0AF6698B095F
            A2BBD0DA9C7FE7DD328D4FC5C479C14EB7348D7766832A249ECC5F99697CA288
            FB5925C9B3720084F87FE8CC4849D0B3328DFFD1609FCA302E614DC2B384F9B7
            CC34F7E970D6C953E1D95668ADB318198E8A7892A5256E1B7B0559F384E5D1D1
            B832C3F894FAA1F0B74DA6F95F6131F4BF22D3F8C9910320447F90F4BDCCF209
            18D164E484446321E97C58B0432D4F25C320701C4044E00C8BF5EFA25E70808F
            B59833B28AD31C104BA213DF57833D9E603CC478C8F6DF2AD37C4994458EBAAA
            6B5F0E8010337390C5FEEAB9BE2794479117F0E408BFCB9C5E63F1697F4FF3BB
            514F871B204F709CEDDEE73D19311438BD1F0AB6BBF7447A409382EF20CEC06D
            238E41D754C2FE2FCE3447AA1AE8415183E6C153900320C4EC2CB4BC093D9758
            AC3C18F4298763096AAE711CB670FD6466879A6FCE43D14058EA3D19312394F0
            D1F98E32CF6DBD27330B24D1D20911E79272D441CFD829F1A375726AA5CF2970
            7879F2BFC9FB031A05390042CC0D379D23328E4F17C1BD6DF627E64D9B391C68
            318BB926B861F31992792D41A13240F8E9DD162B4436F09ECC90A0AC4784E91B
            B652CEBB1F6F69FECEBC41061D019CF63D825DE7FD818C8A1C0021E686EF09E1
            FAC332BE07E14D42F9B74E7BDF5737EF4B22D620A23D2583280AD9DE08C2484B
            A07D3826A2EE9DEB691F8BBD0C6A86EA936F5BCC3BB965DA9F1D15EC34CB7734
            46832784B42EF3FE10C6410E801083C1E68B24EEDB33BE0789749410DDD0BC0F
            4FFC9B7A2F3C038473D189477911519847BD27D471D0B57867B003ACBFE473ED
            703D71C64F5400E961AA6C8ECAF87E6CFE38E43FF45EF8B8C8011062707002D0
            347FABF7443A04B9026467D32F7DB1A9943015B4B6DDD7E2B59A43EA76522161
            97EA88EF784F2405720084180E92A6482ADAC37B221D0441981F59FC7C79A293
            C0D07050E2F6068BE17DC47B747F4F0B9186032DE61574025D20420C0FBAFA64
            EFE7D0111711C2AC5759FC9C115859E63DA10221B98D0C749C51CEA337F19E50
            8761F37FAF95D5D46B6CE40008311AB43E2564BDA7F74426046AAD7104382E20
            3A5095E04A4238CF7F9D450D08E49E571F6F38310084FDD104E9CC93FF147200
            84181D5402A975DFD77B2213067903240FA2CFF07BEFC9B404DA0FD4EA6FE73D
            910983481467FE8BBD2792033900428C078D761659BC49D40CC22AF43F405C68
            7DEFC90C080983F4A33FDB7B2219996FB1FA642FEF890CC1CF2D36D3CAD150AB
            4D7034D112A83EDB7F26E40008313E7C8FBE6079C58272C14D8E0CFCCF05FBAD
            C58642AC0349D8F9DE931B001C177A207CCD7B221920BC7FB9C573FE1AE0FAF9
            A4C5EB89FA7B9C163A52A26551DB5E83C80F9D34AFF09E484E6AFB4711A254F8
            2E213C72B4F74406E4CF16F5D5D938FB9DA7D35488D6C5DCC0D7F09EEC1CA02E
            888CEDEFBC279218046E72D6B3A702119E8F05FB9EF597E87D9945A79228590D
            390B7C1F5E6F152BFC0D8A1C0021D2C2A6F9592BF3BBC5CD9924BA2959DE7F0F
            F03BCF0DF6618B4FD9B93A23A6009DF8BDBD2791103A3CB2B196FC99DF1EECE3
            1693E3066968851EFF94FCF00BBD273F03249B92D85BA5B6FFB094789312A276
            50F15B645133A004D04B47750FA5B45B461C834E6A0B2D362E2A5542963AF89B
            BD2791089A281DE93D8919A0EBDDC916732F9E18E1F711D442AF804E96BB7A2F
            A6871B2D6EFED575F51B15390042E461876017075BCF710EE8ED9FD3D80389C6
            A4710CF5D06C4E6B3BAEAD1F84CC8FF19E44020893DF69F118A624E8EA789645
            67F29F89C6DC2CD8E1C10EB1987FE2050DABA8E679D8710EAD230740887CBCC4
            62CD7A9BE14EC2FCDCCC783AFBBE0D169A1D05DA121F6C71C32D259CCBD9EDF3
            AD7E39614AFECEF39E440F9C8573ACC531CBA06D7887850E9744CEB89EDA6E73
            8D43C3D1C48A96DFD71D390042E4853374D4EC5E91F97D90CD65D320CCDF666D
            3CC701E8CD1F17ECE52DBEEF4CB079D62ED8728D45911F4F08EDD3F782C4D6A5
            2DBE2FD50324E0713C90BB7A006786AA858596CFB1291A390042E407C9D6532C
            6642A7FECE21914B5896CDDF5B3B9FF3DCF75894A5CDD5837D2ED83C7772FE1C
            C6614BF3AD66F8ABC56B89F6D7DE67E144D07004F60FB666E2B1EFB3A8EB7FA9
            F31A5D910320447BBC36D8E72D26AB8D03D9FBF421477BE0C756DED30B67D7B4
            9F453ED5232A507332A047E91FE7F94B829D6BF1F86890EA903659CBE2B544AE
            C0B8FD0E381223E4BF20D8BDDE0BF3460E8010ED420634F5D094426D3FE4EFDE
            63312CFBE5607FF45EC88050037E50B3E6B612226B4D06246A7297B597FC77BD
            C54D9F6BEA41EFC50F00C703F44138B4F9394C89E4A316736288C4D5EA1C2647
            0E80107E90014D39148E00ED5BC9B0EFBDA9DD6FB11EF9D71615C97E66F992FA
            72C3BAA8D3C711A07B5D4E71212A1E48064C95A9DE1684BACFCFFC1EB75BDC08
            175954EEAB159C2494FAA8B6E1BB836E42EF310109A17F08F6CB60D75ACCC3A9
            3D393439720084280B6E6224D671032B2DB49F0A36FFDD2DF6AD27E16BDD0CEF
            C1667A81F74287845E0C39647F49E2BBA8B11BBC179911FA72509D422E4CAD8E
            72ABC801104278C291084F7138026F0EB669A271D94C77F65EDC1050FA46683A
            C53D99337C367ACAF608EF2FF35E9C28133900428892202AB024D15864D48FAA
            7CD836A75B9A3E126CF65441DCE7BD20513E72008410A5F11B8BC983E3C2A67A
            ACF762062065F2DFB1CDBA85981339004288D24066F8CC04E32C0FB6A1959F0C
            B89FA5112FFA57B08D82FDDD7B41A20EE40008214A63BEC527E21495026CAE17
            7A2F680E5225FF91F4B8BFF762443DC801104294C8A260072418A7F464C094C9
            7F9CFD5FE3BD20510F7200841025F22A8BF5DB2928591910ADFD14A245B75A4C
            7AEC6AE9A8C8801C002144A92054B3758271D8648FF35E4C1F560B7647B06727
            184BC97F6268E40008214AA5EBC9804AFE13AEC8011042944ACA64402488BFE9
            BDA0695C6D693A172AF94F8C841C002144C9D09AF65D09C661B3DDC57B313D6C
            6E51A448C97FC20D3900428892E96A32A092FF843B72008410A5932A19F0D460
            1FF45E8C29F94F14821C002144E9742D19907C84149D0A95FC27C6420E8010A2
            74BA960C7895A5112752F29F180B390042881A48950C7855B05D1DD7A1E43F51
            0C7200841035903219D0B34D307908293A142AF94F8C8D1C0021442DD49E0CB8
            6AB03B4DC97FA210E40008216A216532E0E6CDCF36797FB0B3128C4312E3860E
            F3171D430E8010A216D6B6980CB87A82B128C3E348E1C1600F4CFB893DDEFCBD
            872C86D9FFD3BC9E625ECF3C484EA4B46F9560EB34F35CBBE7353F9F176CB760
            4F4F3077DA1BEF97E1F31513861C0021444DA44A06AC1925FF8924C8011042D4
            C48E36D99B9F92FF4432E40008216A235532608D28F94F24430E8010A2368E0A
            7686F7241C90F29F488A1C0021446D905847395D0A65C09A90F29F488A1C0021
            448D500E78A4F7245A8433FF6D832DF59E88E80E7200841035421DFC9F2C8AEB
            4C0217057B93F72444B790032084A89593822DF09E440BFC23D876C196794F44
            740B390042885AE1E9FFFA602FF59E4866902D3ED57B12A27BC8011042D40CE5
            80E802CCF79E48262EB118FA7FD27B22A27BC8011042D4CECEC12EB728C7DB25
            886EEC622B658985488A1C0021441740677F71B0B5BC279288EB82ED13EC7EEF
            8988EE22074008D115C805205B7E63EF898CC9D783BD2FD813DE1311DD460E80
            10A24BD0A1EF448B8973293AEFB5C93DC10E0FB6C47B22623290032084E8229B
            043B3ED8C1C19EE13D9939F85BB0AF043B2DD823DE931193831C002144974130
            882C7ACED377B0182128019EF62FB5F8B47F85459D7F215A450E80106252E048
            80FC00DAE9AE63B1A7C04CF6CCE677282F7C5A9FD74076FED439FD63C15634AF
            97077BA0E767EFEBBB2DCAF92AB94FB8F35F2DB3765B8D30D9CA000000004945
            4E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 26.456710000000000000
          Width = 570.709030000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            'PT. KELOMPOK 6 SEMAKIN DIDEPAN.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 94.488250000000000000
          Width = 272.126160000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 3.000000000000000000
          Memo.UTF8W = (
            'LAPORAN DATA PENJUALAN')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 128.504020000000000000
          Width = 1179.212896220000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 204.094620000000000000
        Width = 1171.654300000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779529999999990000
          Width = 37.086580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '  NO')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 37.086580000000000000
          Top = 3.779529999999990000
          Width = 363.672108110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                                     DATA PELANGGAN')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 756.871736220000000000
          Top = 3.779529999999990000
          Width = 136.900308110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '         HARGA JUAL')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 1030.672352440000000000
          Top = 3.779529999999990000
          Width = 144.459368110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '         TOTAL HARGA')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 400.758688110000000000
          Top = 3.779529999999990000
          Width = 356.113048110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '                                            DATA BARANG')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 893.772044330000000000
          Top = 3.779529999999990000
          Width = 136.900308110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '             JUMLAH')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 45.354360000000000000
        ParentFont = False
        Top = 563.149970000000000000
        Width = 1171.654300000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1171.654300000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 1065.827460000000000000
          Top = 8.559059999999900000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 11.338590000000000000
          Width = 192.756030000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CUKUP SEKIAN')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 464.882190000000000000
        Width = 1171.654300000000000000
        object Memo74: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 895.748610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 891.969080000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            
              '             [SUM(strtoint(<FR_PENJUALAN."jumlah">),masterdata1)' +
              ']')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 1031.811690000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            
              '           Rp. [SUM(strtoint(<FR_PENJUALAN."total_harga">),maste' +
              'rdata1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxReport1'
    CloseDataSource = False
    DataSource = DataSourceDETAILPENJUALAN
    BCDToCurrency = False
    Left = 960
    Top = 272
  end
  object ZUSER: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM pengguna')
    Params = <>
    Left = 368
    Top = 472
  end
  object DsUSER: TDataSource
    DataSet = ZUSER
    Left = 432
    Top = 472
  end
end
