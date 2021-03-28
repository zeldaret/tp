lbl_8063E810:
/* 8063E810  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063E814  7C 08 02 A6 */	mflr r0
/* 8063E818  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063E81C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E820  4B D2 39 BC */	b _savegpr_29
/* 8063E824  7C 7E 1B 78 */	mr r30, r3
/* 8063E828  7C 9F 23 78 */	mr r31, r4
/* 8063E82C  A8 03 05 62 */	lha r0, 0x562(r3)
/* 8063E830  7C 05 00 50 */	subf r0, r5, r0
/* 8063E834  B0 03 05 62 */	sth r0, 0x562(r3)
/* 8063E838  A8 03 05 62 */	lha r0, 0x562(r3)
/* 8063E83C  2C 00 00 00 */	cmpwi r0, 0
/* 8063E840  40 80 00 0C */	bge lbl_8063E84C
/* 8063E844  38 00 00 00 */	li r0, 0
/* 8063E848  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_8063E84C:
/* 8063E84C  80 9E 0C 50 */	lwz r4, 0xc50(r30)
/* 8063E850  88 64 00 74 */	lbz r3, 0x74(r4)
/* 8063E854  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8063E858  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 8063E85C  41 82 00 18 */	beq lbl_8063E874
/* 8063E860  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8063E864  74 00 00 28 */	andis. r0, r0, 0x28
/* 8063E868  40 82 00 0C */	bne lbl_8063E874
/* 8063E86C  38 80 00 01 */	li r4, 1
/* 8063E870  48 00 00 08 */	b lbl_8063E878
lbl_8063E874:
/* 8063E874  38 80 00 00 */	li r4, 0
lbl_8063E878:
/* 8063E878  3B A0 00 1E */	li r29, 0x1e
/* 8063E87C  88 1E 0C 6F */	lbz r0, 0xc6f(r30)
/* 8063E880  7C 00 07 74 */	extsb r0, r0
/* 8063E884  2C 00 00 01 */	cmpwi r0, 1
/* 8063E888  40 82 00 0C */	bne lbl_8063E894
/* 8063E88C  3B A0 00 1F */	li r29, 0x1f
/* 8063E890  48 00 00 10 */	b lbl_8063E8A0
lbl_8063E894:
/* 8063E894  2C 00 00 02 */	cmpwi r0, 2
/* 8063E898  40 82 00 08 */	bne lbl_8063E8A0
/* 8063E89C  3B A0 00 20 */	li r29, 0x20
lbl_8063E8A0:
/* 8063E8A0  4B A4 5D 10 */	b getHitSeID__12dCcD_GObjInfFUci
/* 8063E8A4  7C 64 1B 78 */	mr r4, r3
/* 8063E8A8  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 8063E8AC  7F A5 EB 78 */	mr r5, r29
/* 8063E8B0  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 8063E8B4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8063E8B8  7D 89 03 A6 */	mtctr r12
/* 8063E8BC  4E 80 04 21 */	bctrl 
/* 8063E8C0  88 1E 0C 6F */	lbz r0, 0xc6f(r30)
/* 8063E8C4  7C 00 07 75 */	extsb. r0, r0
/* 8063E8C8  40 82 00 30 */	bne lbl_8063E8F8
/* 8063E8CC  38 DF 00 D4 */	addi r6, r31, 0xd4
/* 8063E8D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8063E8D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8063E8D8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8063E8DC  38 80 00 01 */	li r4, 1
/* 8063E8E0  7F C5 F3 78 */	mr r5, r30
/* 8063E8E4  38 E0 00 00 */	li r7, 0
/* 8063E8E8  39 00 00 00 */	li r8, 0
/* 8063E8EC  39 20 00 00 */	li r9, 0
/* 8063E8F0  4B A0 D9 28 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 8063E8F4  48 00 00 2C */	b lbl_8063E920
lbl_8063E8F8:
/* 8063E8F8  38 DF 00 D4 */	addi r6, r31, 0xd4
/* 8063E8FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8063E900  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8063E904  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8063E908  38 80 00 03 */	li r4, 3
/* 8063E90C  7F C5 F3 78 */	mr r5, r30
/* 8063E910  38 E0 00 00 */	li r7, 0
/* 8063E914  39 00 00 00 */	li r8, 0
/* 8063E918  39 20 00 00 */	li r9, 0
/* 8063E91C  4B A0 D8 FC */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_8063E920:
/* 8063E920  39 61 00 20 */	addi r11, r1, 0x20
/* 8063E924  4B D2 39 04 */	b _restgpr_29
/* 8063E928  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063E92C  7C 08 03 A6 */	mtlr r0
/* 8063E930  38 21 00 20 */	addi r1, r1, 0x20
/* 8063E934  4E 80 00 20 */	blr 
