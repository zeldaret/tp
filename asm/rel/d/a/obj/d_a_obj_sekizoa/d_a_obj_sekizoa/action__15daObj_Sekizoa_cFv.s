lbl_80CCFBA0:
/* 80CCFBA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CCFBA4  7C 08 02 A6 */	mflr r0
/* 80CCFBA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CCFBAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CCFBB0  7C 7F 1B 78 */	mr r31, r3
/* 80CCFBB4  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 80CCFBB8  4B 3B 48 A9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CCFBBC  28 03 00 00 */	cmplwi r3, 0
/* 80CCFBC0  41 82 00 34 */	beq lbl_80CCFBF4
/* 80CCFBC4  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 80CCFBC8  4B 3B 49 B5 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 80CCFBCC  38 80 00 01 */	li r4, 1
/* 80CCFBD0  4B 3B 49 E1 */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80CCFBD4  7C 64 1B 78 */	mr r4, r3
/* 80CCFBD8  38 7F 05 80 */	addi r3, r31, 0x580
/* 80CCFBDC  38 A0 00 02 */	li r5, 2
/* 80CCFBE0  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80CCFBE4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80CCFBE8  7D 89 03 A6 */	mtctr r12
/* 80CCFBEC  4E 80 04 21 */	bctrl 
/* 80CCFBF0  48 00 00 40 */	b lbl_80CCFC30
lbl_80CCFBF4:
/* 80CCFBF4  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80CCFBF8  4B 3B 48 69 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CCFBFC  28 03 00 00 */	cmplwi r3, 0
/* 80CCFC00  41 82 00 30 */	beq lbl_80CCFC30
/* 80CCFC04  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80CCFC08  4B 3B 49 75 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 80CCFC0C  38 80 00 01 */	li r4, 1
/* 80CCFC10  4B 3B 49 A1 */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80CCFC14  7C 64 1B 78 */	mr r4, r3
/* 80CCFC18  38 7F 05 80 */	addi r3, r31, 0x580
/* 80CCFC1C  38 A0 00 02 */	li r5, 2
/* 80CCFC20  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80CCFC24  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80CCFC28  7D 89 03 A6 */	mtctr r12
/* 80CCFC2C  4E 80 04 21 */	bctrl 
lbl_80CCFC30:
/* 80CCFC30  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80CCFC34  2C 00 00 00 */	cmpwi r0, 0
/* 80CCFC38  41 82 00 5C */	beq lbl_80CCFC94
/* 80CCFC3C  38 C0 00 00 */	li r6, 0
/* 80CCFC40  38 60 00 00 */	li r3, 0
/* 80CCFC44  7C C4 33 78 */	mr r4, r6
/* 80CCFC48  3C A0 80 CD */	lis r5, lit_4350@ha /* 0x80CD5DBC@ha */
/* 80CCFC4C  C0 05 5D BC */	lfs f0, lit_4350@l(r5)  /* 0x80CD5DBC@l */
/* 80CCFC50  38 00 00 02 */	li r0, 2
/* 80CCFC54  7C 09 03 A6 */	mtctr r0
lbl_80CCFC58:
/* 80CCFC58  7C BF 22 14 */	add r5, r31, r4
/* 80CCFC5C  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80CCFC60  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80CCFC64  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80CCFC68  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80CCFC6C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80CCFC70  38 63 00 04 */	addi r3, r3, 4
/* 80CCFC74  38 84 00 06 */	addi r4, r4, 6
/* 80CCFC78  42 00 FF E0 */	bdnz lbl_80CCFC58
/* 80CCFC7C  38 00 00 00 */	li r0, 0
/* 80CCFC80  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80CCFC84  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80CCFC88  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80CCFC8C  38 00 00 01 */	li r0, 1
/* 80CCFC90  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80CCFC94:
/* 80CCFC94  38 7F 11 0C */	addi r3, r31, 0x110c
/* 80CCFC98  4B 69 23 81 */	bl __ptmf_test
/* 80CCFC9C  2C 03 00 00 */	cmpwi r3, 0
/* 80CCFCA0  41 82 00 54 */	beq lbl_80CCFCF4
/* 80CCFCA4  38 7F 11 18 */	addi r3, r31, 0x1118
/* 80CCFCA8  38 9F 11 0C */	addi r4, r31, 0x110c
/* 80CCFCAC  4B 69 23 9D */	bl __ptmf_cmpr
/* 80CCFCB0  2C 03 00 00 */	cmpwi r3, 0
/* 80CCFCB4  40 82 00 1C */	bne lbl_80CCFCD0
/* 80CCFCB8  7F E3 FB 78 */	mr r3, r31
/* 80CCFCBC  38 80 00 00 */	li r4, 0
/* 80CCFCC0  39 9F 11 18 */	addi r12, r31, 0x1118
/* 80CCFCC4  4B 69 23 C1 */	bl __ptmf_scall
/* 80CCFCC8  60 00 00 00 */	nop 
/* 80CCFCCC  48 00 00 28 */	b lbl_80CCFCF4
lbl_80CCFCD0:
/* 80CCFCD0  80 7F 11 0C */	lwz r3, 0x110c(r31)
/* 80CCFCD4  80 1F 11 10 */	lwz r0, 0x1110(r31)
/* 80CCFCD8  90 61 00 08 */	stw r3, 8(r1)
/* 80CCFCDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CCFCE0  80 1F 11 14 */	lwz r0, 0x1114(r31)
/* 80CCFCE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CCFCE8  7F E3 FB 78 */	mr r3, r31
/* 80CCFCEC  38 81 00 08 */	addi r4, r1, 8
/* 80CCFCF0  48 00 0E 45 */	bl setAction__15daObj_Sekizoa_cFM15daObj_Sekizoa_cFPCvPvPv_i
lbl_80CCFCF4:
/* 80CCFCF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CCFCF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CCFCFC  7C 08 03 A6 */	mtlr r0
/* 80CCFD00  38 21 00 20 */	addi r1, r1, 0x20
/* 80CCFD04  4E 80 00 20 */	blr 
