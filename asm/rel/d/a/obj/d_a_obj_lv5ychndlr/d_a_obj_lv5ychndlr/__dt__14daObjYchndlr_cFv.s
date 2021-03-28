lbl_80C6E808:
/* 80C6E808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6E80C  7C 08 02 A6 */	mflr r0
/* 80C6E810  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6E814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6E818  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6E81C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C6E820  7C 9F 23 78 */	mr r31, r4
/* 80C6E824  41 82 01 38 */	beq lbl_80C6E95C
/* 80C6E828  3C 60 80 C7 */	lis r3, __vt__14daObjYchndlr_c@ha
/* 80C6E82C  38 03 EB 38 */	addi r0, r3, __vt__14daObjYchndlr_c@l
/* 80C6E830  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C6E834  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80C6E838  41 82 00 84 */	beq lbl_80C6E8BC
/* 80C6E83C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C6E840  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C6E844  90 7E 0B 8C */	stw r3, 0xb8c(r30)
/* 80C6E848  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C6E84C  90 1E 0C 70 */	stw r0, 0xc70(r30)
/* 80C6E850  38 03 00 84 */	addi r0, r3, 0x84
/* 80C6E854  90 1E 0C 88 */	stw r0, 0xc88(r30)
/* 80C6E858  34 1E 0C 54 */	addic. r0, r30, 0xc54
/* 80C6E85C  41 82 00 54 */	beq lbl_80C6E8B0
/* 80C6E860  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C6E864  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C6E868  90 7E 0C 70 */	stw r3, 0xc70(r30)
/* 80C6E86C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C6E870  90 1E 0C 88 */	stw r0, 0xc88(r30)
/* 80C6E874  34 1E 0C 74 */	addic. r0, r30, 0xc74
/* 80C6E878  41 82 00 10 */	beq lbl_80C6E888
/* 80C6E87C  3C 60 80 C7 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C6E880  38 03 EB 20 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C6E884  90 1E 0C 88 */	stw r0, 0xc88(r30)
lbl_80C6E888:
/* 80C6E888  34 1E 0C 54 */	addic. r0, r30, 0xc54
/* 80C6E88C  41 82 00 24 */	beq lbl_80C6E8B0
/* 80C6E890  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C6E894  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C6E898  90 1E 0C 70 */	stw r0, 0xc70(r30)
/* 80C6E89C  34 1E 0C 54 */	addic. r0, r30, 0xc54
/* 80C6E8A0  41 82 00 10 */	beq lbl_80C6E8B0
/* 80C6E8A4  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha
/* 80C6E8A8  38 03 EB 2C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C6E8AC  90 1E 0C 6C */	stw r0, 0xc6c(r30)
lbl_80C6E8B0:
/* 80C6E8B0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80C6E8B4  38 80 00 00 */	li r4, 0
/* 80C6E8B8  4B 41 58 2C */	b __dt__12dCcD_GObjInfFv
lbl_80C6E8BC:
/* 80C6E8BC  38 7E 06 60 */	addi r3, r30, 0x660
/* 80C6E8C0  3C 80 80 C7 */	lis r4, __dt__8dCcD_CylFv@ha
/* 80C6E8C4  38 84 E5 A8 */	addi r4, r4, __dt__8dCcD_CylFv@l
/* 80C6E8C8  38 A0 01 3C */	li r5, 0x13c
/* 80C6E8CC  38 C0 00 04 */	li r6, 4
/* 80C6E8D0  4B 6F 34 18 */	b __destroy_arr
/* 80C6E8D4  34 1E 06 24 */	addic. r0, r30, 0x624
/* 80C6E8D8  41 82 00 54 */	beq lbl_80C6E92C
/* 80C6E8DC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C6E8E0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C6E8E4  90 7E 06 3C */	stw r3, 0x63c(r30)
/* 80C6E8E8  38 03 00 20 */	addi r0, r3, 0x20
/* 80C6E8EC  90 1E 06 40 */	stw r0, 0x640(r30)
/* 80C6E8F0  34 1E 06 40 */	addic. r0, r30, 0x640
/* 80C6E8F4  41 82 00 24 */	beq lbl_80C6E918
/* 80C6E8F8  3C 60 80 C7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C6E8FC  38 03 EB 14 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C6E900  90 1E 06 40 */	stw r0, 0x640(r30)
/* 80C6E904  34 1E 06 40 */	addic. r0, r30, 0x640
/* 80C6E908  41 82 00 10 */	beq lbl_80C6E918
/* 80C6E90C  3C 60 80 C7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C6E910  38 03 EB 08 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C6E914  90 1E 06 40 */	stw r0, 0x640(r30)
lbl_80C6E918:
/* 80C6E918  34 1E 06 24 */	addic. r0, r30, 0x624
/* 80C6E91C  41 82 00 10 */	beq lbl_80C6E92C
/* 80C6E920  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C6E924  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C6E928  90 1E 06 3C */	stw r0, 0x63c(r30)
lbl_80C6E92C:
/* 80C6E92C  28 1E 00 00 */	cmplwi r30, 0
/* 80C6E930  41 82 00 1C */	beq lbl_80C6E94C
/* 80C6E934  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 80C6E938  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 80C6E93C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C6E940  7F C3 F3 78 */	mr r3, r30
/* 80C6E944  38 80 00 00 */	li r4, 0
/* 80C6E948  4B 3A A3 44 */	b __dt__10fopAc_ac_cFv
lbl_80C6E94C:
/* 80C6E94C  7F E0 07 35 */	extsh. r0, r31
/* 80C6E950  40 81 00 0C */	ble lbl_80C6E95C
/* 80C6E954  7F C3 F3 78 */	mr r3, r30
/* 80C6E958  4B 66 03 E4 */	b __dl__FPv
lbl_80C6E95C:
/* 80C6E95C  7F C3 F3 78 */	mr r3, r30
/* 80C6E960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6E964  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6E968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6E96C  7C 08 03 A6 */	mtlr r0
/* 80C6E970  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6E974  4E 80 00 20 */	blr 
