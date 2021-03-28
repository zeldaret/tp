lbl_800F571C:
/* 800F571C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800F5720  7C 08 02 A6 */	mflr r0
/* 800F5724  90 01 00 34 */	stw r0, 0x34(r1)
/* 800F5728  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800F572C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800F5730  39 61 00 20 */	addi r11, r1, 0x20
/* 800F5734  48 26 CA A1 */	bl _savegpr_27
/* 800F5738  7C 7C 1B 78 */	mr r28, r3
/* 800F573C  7C 9D 23 79 */	or. r29, r4, r4
/* 800F5740  83 C3 28 18 */	lwz r30, 0x2818(r3)
/* 800F5744  38 00 FF FE */	li r0, -2
/* 800F5748  90 03 31 98 */	stw r0, 0x3198(r3)
/* 800F574C  40 80 01 AC */	bge lbl_800F58F8
/* 800F5750  C0 3C 33 AC */	lfs f1, 0x33ac(r28)
/* 800F5754  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800F5758  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F575C  40 81 01 44 */	ble lbl_800F58A0
/* 800F5760  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 800F5764  A8 1C 2F E2 */	lha r0, 0x2fe2(r28)
/* 800F5768  7C 03 00 50 */	subf r0, r3, r0
/* 800F576C  7C 1F 07 34 */	extsh r31, r0
/* 800F5770  7F E3 FB 78 */	mr r3, r31
/* 800F5774  48 26 F9 5D */	bl abs
/* 800F5778  38 00 68 00 */	li r0, 0x6800
/* 800F577C  7C 65 FE 70 */	srawi r5, r3, 0x1f
/* 800F5780  54 04 0F FE */	srwi r4, r0, 0x1f
/* 800F5784  7C 00 18 10 */	subfc r0, r0, r3
/* 800F5788  7C 85 21 14 */	adde r4, r5, r4
/* 800F578C  2C 03 00 40 */	cmpwi r3, 0x40
/* 800F5790  41 80 00 0C */	blt lbl_800F579C
/* 800F5794  2C 03 7F 80 */	cmpwi r3, 0x7f80
/* 800F5798  40 81 00 54 */	ble lbl_800F57EC
lbl_800F579C:
/* 800F579C  2C 1D FF FD */	cmpwi r29, -3
/* 800F57A0  40 82 00 20 */	bne lbl_800F57C0
/* 800F57A4  A8 1C 30 12 */	lha r0, 0x3012(r28)
/* 800F57A8  2C 00 00 00 */	cmpwi r0, 0
/* 800F57AC  40 82 00 0C */	bne lbl_800F57B8
/* 800F57B0  38 00 00 02 */	li r0, 2
/* 800F57B4  48 00 00 4C */	b lbl_800F5800
lbl_800F57B8:
/* 800F57B8  38 00 00 03 */	li r0, 3
/* 800F57BC  48 00 00 44 */	b lbl_800F5800
lbl_800F57C0:
/* 800F57C0  2C 1D FF FE */	cmpwi r29, -2
/* 800F57C4  40 82 00 0C */	bne lbl_800F57D0
/* 800F57C8  38 00 FF FD */	li r0, -3
/* 800F57CC  90 1C 31 98 */	stw r0, 0x3198(r28)
lbl_800F57D0:
/* 800F57D0  A8 1C 30 12 */	lha r0, 0x3012(r28)
/* 800F57D4  2C 00 00 00 */	cmpwi r0, 0
/* 800F57D8  40 82 00 0C */	bne lbl_800F57E4
/* 800F57DC  38 00 00 03 */	li r0, 3
/* 800F57E0  48 00 00 20 */	b lbl_800F5800
lbl_800F57E4:
/* 800F57E4  38 00 00 02 */	li r0, 2
/* 800F57E8  48 00 00 18 */	b lbl_800F5800
lbl_800F57EC:
/* 800F57EC  7F E0 07 35 */	extsh. r0, r31
/* 800F57F0  40 81 00 0C */	ble lbl_800F57FC
/* 800F57F4  38 00 00 02 */	li r0, 2
/* 800F57F8  48 00 00 08 */	b lbl_800F5800
lbl_800F57FC:
/* 800F57FC  38 00 00 03 */	li r0, 3
lbl_800F5800:
/* 800F5800  2C 04 00 01 */	cmpwi r4, 1
/* 800F5804  40 82 00 50 */	bne lbl_800F5854
/* 800F5808  20 00 00 02 */	subfic r0, r0, 2
/* 800F580C  7C 00 00 34 */	cntlzw r0, r0
/* 800F5810  54 03 D9 7E */	srwi r3, r0, 5
/* 800F5814  38 03 00 DD */	addi r0, r3, 0xdd
/* 800F5818  7C 1F 03 78 */	mr r31, r0
/* 800F581C  2C 00 00 DE */	cmpwi r0, 0xde
/* 800F5820  40 82 00 10 */	bne lbl_800F5830
/* 800F5824  A8 1C 30 12 */	lha r0, 0x3012(r28)
/* 800F5828  2C 00 00 00 */	cmpwi r0, 0
/* 800F582C  41 82 00 18 */	beq lbl_800F5844
lbl_800F5830:
/* 800F5830  2C 1F 00 DD */	cmpwi r31, 0xdd
/* 800F5834  40 82 00 C8 */	bne lbl_800F58FC
/* 800F5838  A8 1C 30 12 */	lha r0, 0x3012(r28)
/* 800F583C  2C 00 00 01 */	cmpwi r0, 1
/* 800F5840  40 82 00 BC */	bne lbl_800F58FC
lbl_800F5844:
/* 800F5844  7F 83 E3 78 */	mr r3, r28
/* 800F5848  7F E4 FB 78 */	mr r4, r31
/* 800F584C  48 00 04 B9 */	bl procCanoePaddleShiftInit__9daAlink_cFi
/* 800F5850  48 00 01 AC */	b lbl_800F59FC
lbl_800F5854:
/* 800F5854  20 00 00 02 */	subfic r0, r0, 2
/* 800F5858  7C 00 00 34 */	cntlzw r0, r0
/* 800F585C  54 03 D9 7E */	srwi r3, r0, 5
/* 800F5860  38 03 00 DB */	addi r0, r3, 0xdb
/* 800F5864  7C 1F 03 78 */	mr r31, r0
/* 800F5868  2C 00 00 DC */	cmpwi r0, 0xdc
/* 800F586C  40 82 00 10 */	bne lbl_800F587C
/* 800F5870  A8 1C 30 12 */	lha r0, 0x3012(r28)
/* 800F5874  2C 00 00 00 */	cmpwi r0, 0
/* 800F5878  41 82 00 18 */	beq lbl_800F5890
lbl_800F587C:
/* 800F587C  2C 1F 00 DB */	cmpwi r31, 0xdb
/* 800F5880  40 82 00 7C */	bne lbl_800F58FC
/* 800F5884  A8 1C 30 12 */	lha r0, 0x3012(r28)
/* 800F5888  2C 00 00 01 */	cmpwi r0, 1
/* 800F588C  40 82 00 70 */	bne lbl_800F58FC
lbl_800F5890:
/* 800F5890  7F 83 E3 78 */	mr r3, r28
/* 800F5894  7F E4 FB 78 */	mr r4, r31
/* 800F5898  48 00 04 6D */	bl procCanoePaddleShiftInit__9daAlink_cFi
/* 800F589C  48 00 01 60 */	b lbl_800F59FC
lbl_800F58A0:
/* 800F58A0  2C 1D FF FD */	cmpwi r29, -3
/* 800F58A4  40 82 00 28 */	bne lbl_800F58CC
/* 800F58A8  A8 1C 30 12 */	lha r0, 0x3012(r28)
/* 800F58AC  2C 00 00 01 */	cmpwi r0, 1
/* 800F58B0  40 82 00 10 */	bne lbl_800F58C0
/* 800F58B4  38 80 00 DB */	li r4, 0xdb
/* 800F58B8  48 00 04 4D */	bl procCanoePaddleShiftInit__9daAlink_cFi
/* 800F58BC  48 00 01 40 */	b lbl_800F59FC
lbl_800F58C0:
/* 800F58C0  38 80 00 DC */	li r4, 0xdc
/* 800F58C4  48 00 04 41 */	bl procCanoePaddleShiftInit__9daAlink_cFi
/* 800F58C8  48 00 01 34 */	b lbl_800F59FC
lbl_800F58CC:
/* 800F58CC  2C 1D FF FE */	cmpwi r29, -2
/* 800F58D0  40 82 00 0C */	bne lbl_800F58DC
/* 800F58D4  38 00 FF FD */	li r0, -3
/* 800F58D8  90 1C 31 98 */	stw r0, 0x3198(r28)
lbl_800F58DC:
/* 800F58DC  A8 1C 30 12 */	lha r0, 0x3012(r28)
/* 800F58E0  2C 00 00 01 */	cmpwi r0, 1
/* 800F58E4  40 82 00 0C */	bne lbl_800F58F0
/* 800F58E8  3B E0 00 DC */	li r31, 0xdc
/* 800F58EC  48 00 00 10 */	b lbl_800F58FC
lbl_800F58F0:
/* 800F58F0  3B E0 00 DB */	li r31, 0xdb
/* 800F58F4  48 00 00 08 */	b lbl_800F58FC
lbl_800F58F8:
/* 800F58F8  7F BF EB 78 */	mr r31, r29
lbl_800F58FC:
/* 800F58FC  7F 83 E3 78 */	mr r3, r28
/* 800F5900  38 80 00 90 */	li r4, 0x90
/* 800F5904  4B FC C6 69 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F5908  3C 60 80 39 */	lis r3, m__19daAlinkHIO_canoe_c0@ha
/* 800F590C  38 63 E6 10 */	addi r3, r3, m__19daAlinkHIO_canoe_c0@l
/* 800F5910  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 800F5914  3B 60 00 00 */	li r27, 0
/* 800F5918  2C 1F 00 DD */	cmpwi r31, 0xdd
/* 800F591C  41 82 00 0C */	beq lbl_800F5928
/* 800F5920  2C 1F 00 DE */	cmpwi r31, 0xde
/* 800F5924  40 82 00 4C */	bne lbl_800F5970
lbl_800F5928:
/* 800F5928  38 00 00 01 */	li r0, 1
/* 800F592C  B0 1C 30 0E */	sth r0, 0x300e(r28)
/* 800F5930  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 800F5934  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800F5938  FC 20 F8 50 */	fneg f1, f31
/* 800F593C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_canoe_c0@ha
/* 800F5940  38 63 E6 10 */	addi r3, r3, m__19daAlinkHIO_canoe_c0@l
/* 800F5944  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 800F5948  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F594C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F5950  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800F5954  40 81 00 08 */	ble lbl_800F595C
/* 800F5958  3B 60 00 01 */	li r27, 1
lbl_800F595C:
/* 800F595C  C0 02 94 28 */	lfs f0, lit_14621(r2)
/* 800F5960  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 800F5964  38 00 00 00 */	li r0, 0
/* 800F5968  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 800F596C  48 00 00 54 */	b lbl_800F59C0
lbl_800F5970:
/* 800F5970  38 00 00 00 */	li r0, 0
/* 800F5974  B0 1C 30 0E */	sth r0, 0x300e(r28)
/* 800F5978  7F 83 E3 78 */	mr r3, r28
/* 800F597C  4B FF E2 9D */	bl getCanoeSpeedRate__9daAlink_cCFv
/* 800F5980  EC 3F 00 72 */	fmuls f1, f31, f1
/* 800F5984  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800F5988  EC 20 00 72 */	fmuls f1, f0, f1
/* 800F598C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 800F5990  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800F5994  40 80 00 08 */	bge lbl_800F599C
/* 800F5998  3B 60 00 01 */	li r27, 1
lbl_800F599C:
/* 800F599C  C0 02 93 28 */	lfs f0, lit_7451(r2)
/* 800F59A0  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 800F59A4  2C 1D FF FF */	cmpwi r29, -1
/* 800F59A8  40 82 00 10 */	bne lbl_800F59B8
/* 800F59AC  38 00 00 01 */	li r0, 1
/* 800F59B0  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 800F59B4  48 00 00 0C */	b lbl_800F59C0
lbl_800F59B8:
/* 800F59B8  38 00 00 00 */	li r0, 0
/* 800F59BC  B0 1C 30 08 */	sth r0, 0x3008(r28)
lbl_800F59C0:
/* 800F59C0  2C 1B 00 00 */	cmpwi r27, 0
/* 800F59C4  41 82 00 10 */	beq lbl_800F59D4
/* 800F59C8  3C 60 80 39 */	lis r3, m__19daAlinkHIO_canoe_c0@ha
/* 800F59CC  38 63 E6 10 */	addi r3, r3, m__19daAlinkHIO_canoe_c0@l
/* 800F59D0  C3 E3 00 30 */	lfs f31, 0x30(r3)
lbl_800F59D4:
/* 800F59D4  7F 83 E3 78 */	mr r3, r28
/* 800F59D8  7F E4 FB 78 */	mr r4, r31
/* 800F59DC  FC 20 F8 90 */	fmr f1, f31
/* 800F59E0  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800F59E4  38 A0 00 23 */	li r5, 0x23
/* 800F59E8  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800F59EC  4B FB 76 21 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800F59F0  7F 83 E3 78 */	mr r3, r28
/* 800F59F4  4B FF EB A9 */	bl setSyncCanoePos__9daAlink_cFv
/* 800F59F8  38 60 00 01 */	li r3, 1
lbl_800F59FC:
/* 800F59FC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800F5A00  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800F5A04  39 61 00 20 */	addi r11, r1, 0x20
/* 800F5A08  48 26 C8 19 */	bl _restgpr_27
/* 800F5A0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800F5A10  7C 08 03 A6 */	mtlr r0
/* 800F5A14  38 21 00 30 */	addi r1, r1, 0x30
/* 800F5A18  4E 80 00 20 */	blr 
