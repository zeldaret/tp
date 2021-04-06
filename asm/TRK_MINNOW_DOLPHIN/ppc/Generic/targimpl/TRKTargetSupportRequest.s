lbl_8036FB20:
/* 8036FB20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8036FB24  7C 08 02 A6 */	mflr r0
/* 8036FB28  3C 60 80 45 */	lis r3, gTRKCPUState@ha /* 0x8044F338@ha */
/* 8036FB2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8036FB30  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 8036FB34  3B E3 F3 38 */	addi r31, r3, gTRKCPUState@l /* 0x8044F338@l */
/* 8036FB38  83 7F 00 0C */	lwz r27, 0xc(r31)
/* 8036FB3C  2C 1B 00 D1 */	cmpwi r27, 0xd1
/* 8036FB40  41 82 00 40 */	beq lbl_8036FB80
/* 8036FB44  2C 1B 00 D0 */	cmpwi r27, 0xd0
/* 8036FB48  41 82 00 38 */	beq lbl_8036FB80
/* 8036FB4C  2C 1B 00 D2 */	cmpwi r27, 0xd2
/* 8036FB50  41 82 00 30 */	beq lbl_8036FB80
/* 8036FB54  2C 1B 00 D3 */	cmpwi r27, 0xd3
/* 8036FB58  41 82 00 28 */	beq lbl_8036FB80
/* 8036FB5C  2C 1B 00 D4 */	cmpwi r27, 0xd4
/* 8036FB60  41 82 00 20 */	beq lbl_8036FB80
/* 8036FB64  38 61 00 10 */	addi r3, r1, 0x10
/* 8036FB68  38 80 00 04 */	li r4, 4
/* 8036FB6C  4B FF D0 D1 */	bl TRKConstructEvent
/* 8036FB70  38 61 00 10 */	addi r3, r1, 0x10
/* 8036FB74  4B FF D0 E1 */	bl TRKPostEvent
/* 8036FB78  38 60 00 00 */	li r3, 0
/* 8036FB7C  48 00 01 90 */	b lbl_8036FD0C
lbl_8036FB80:
/* 8036FB80  2C 1B 00 D2 */	cmpwi r27, 0xd2
/* 8036FB84  40 82 00 50 */	bne lbl_8036FBD4
/* 8036FB88  3C 60 80 45 */	lis r3, gTRKCPUState@ha /* 0x8044F338@ha */
/* 8036FB8C  38 C1 00 0C */	addi r6, r1, 0xc
/* 8036FB90  38 83 F3 38 */	addi r4, r3, gTRKCPUState@l /* 0x8044F338@l */
/* 8036FB94  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8036FB98  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8036FB9C  80 A4 00 18 */	lwz r5, 0x18(r4)
/* 8036FBA0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8036FBA4  4B FF F3 D9 */	bl HandleOpenFileSupportRequest
/* 8036FBA8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036FBAC  7C 7E 1B 78 */	mr r30, r3
/* 8036FBB0  2C 00 00 00 */	cmpwi r0, 0
/* 8036FBB4  40 82 00 14 */	bne lbl_8036FBC8
/* 8036FBB8  2C 1E 00 00 */	cmpwi r30, 0
/* 8036FBBC  41 82 00 0C */	beq lbl_8036FBC8
/* 8036FBC0  38 00 00 01 */	li r0, 1
/* 8036FBC4  90 01 00 0C */	stw r0, 0xc(r1)
lbl_8036FBC8:
/* 8036FBC8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036FBCC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8036FBD0  48 00 01 24 */	b lbl_8036FCF4
lbl_8036FBD4:
/* 8036FBD4  2C 1B 00 D3 */	cmpwi r27, 0xd3
/* 8036FBD8  40 82 00 44 */	bne lbl_8036FC1C
/* 8036FBDC  3C 60 80 45 */	lis r3, gTRKCPUState@ha /* 0x8044F338@ha */
/* 8036FBE0  38 81 00 0C */	addi r4, r1, 0xc
/* 8036FBE4  38 63 F3 38 */	addi r3, r3, gTRKCPUState@l /* 0x8044F338@l */
/* 8036FBE8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8036FBEC  4B FF F2 A9 */	bl HandleCloseFileSupportRequest
/* 8036FBF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036FBF4  7C 7E 1B 78 */	mr r30, r3
/* 8036FBF8  2C 00 00 00 */	cmpwi r0, 0
/* 8036FBFC  40 82 00 14 */	bne lbl_8036FC10
/* 8036FC00  2C 1E 00 00 */	cmpwi r30, 0
/* 8036FC04  41 82 00 0C */	beq lbl_8036FC10
/* 8036FC08  38 00 00 01 */	li r0, 1
/* 8036FC0C  90 01 00 0C */	stw r0, 0xc(r1)
lbl_8036FC10:
/* 8036FC10  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036FC14  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8036FC18  48 00 00 DC */	b lbl_8036FCF4
lbl_8036FC1C:
/* 8036FC1C  2C 1B 00 D4 */	cmpwi r27, 0xd4
/* 8036FC20  40 82 00 68 */	bne lbl_8036FC88
/* 8036FC24  3C 60 80 45 */	lis r3, gTRKCPUState@ha /* 0x8044F338@ha */
/* 8036FC28  38 81 00 08 */	addi r4, r1, 8
/* 8036FC2C  3B A3 F3 38 */	addi r29, r3, gTRKCPUState@l /* 0x8044F338@l */
/* 8036FC30  38 C1 00 0C */	addi r6, r1, 0xc
/* 8036FC34  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8036FC38  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8036FC3C  80 E3 00 00 */	lwz r7, 0(r3)
/* 8036FC40  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8036FC44  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8036FC48  90 E1 00 08 */	stw r7, 8(r1)
/* 8036FC4C  4B FF F1 39 */	bl HandlePositionFileSupportRequest
/* 8036FC50  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036FC54  7C 7E 1B 78 */	mr r30, r3
/* 8036FC58  2C 00 00 00 */	cmpwi r0, 0
/* 8036FC5C  40 82 00 14 */	bne lbl_8036FC70
/* 8036FC60  2C 1E 00 00 */	cmpwi r30, 0
/* 8036FC64  41 82 00 0C */	beq lbl_8036FC70
/* 8036FC68  38 00 00 01 */	li r0, 1
/* 8036FC6C  90 01 00 0C */	stw r0, 0xc(r1)
lbl_8036FC70:
/* 8036FC70  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8036FC74  80 01 00 08 */	lwz r0, 8(r1)
/* 8036FC78  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8036FC7C  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8036FC80  90 03 00 00 */	stw r0, 0(r3)
/* 8036FC84  48 00 00 70 */	b lbl_8036FCF4
lbl_8036FC88:
/* 8036FC88  3C 60 80 45 */	lis r3, gTRKCPUState@ha /* 0x8044F338@ha */
/* 8036FC8C  20 1B 00 D1 */	subfic r0, r27, 0xd1
/* 8036FC90  3B A3 F3 38 */	addi r29, r3, gTRKCPUState@l /* 0x8044F338@l */
/* 8036FC94  38 C1 00 0C */	addi r6, r1, 0xc
/* 8036FC98  83 9D 00 14 */	lwz r28, 0x14(r29)
/* 8036FC9C  7C 00 00 34 */	cntlzw r0, r0
/* 8036FCA0  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8036FCA4  54 08 D9 7E */	srwi r8, r0, 5
/* 8036FCA8  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 8036FCAC  7F 85 E3 78 */	mr r5, r28
/* 8036FCB0  38 E0 00 01 */	li r7, 1
/* 8036FCB4  4B FF F5 C5 */	bl TRKSuppAccessFile
/* 8036FCB8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036FCBC  7C 7E 1B 78 */	mr r30, r3
/* 8036FCC0  2C 00 00 00 */	cmpwi r0, 0
/* 8036FCC4  40 82 00 14 */	bne lbl_8036FCD8
/* 8036FCC8  2C 1E 00 00 */	cmpwi r30, 0
/* 8036FCCC  41 82 00 0C */	beq lbl_8036FCD8
/* 8036FCD0  38 00 00 01 */	li r0, 1
/* 8036FCD4  90 01 00 0C */	stw r0, 0xc(r1)
lbl_8036FCD8:
/* 8036FCD8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036FCDC  2C 1B 00 D1 */	cmpwi r27, 0xd1
/* 8036FCE0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8036FCE4  40 82 00 10 */	bne lbl_8036FCF4
/* 8036FCE8  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8036FCEC  80 9C 00 00 */	lwz r4, 0(r28)
/* 8036FCF0  4B FF F8 59 */	bl TRK_flush_cache
lbl_8036FCF4:
/* 8036FCF4  3C 80 80 45 */	lis r4, gTRKCPUState@ha /* 0x8044F338@ha */
/* 8036FCF8  7F C3 F3 78 */	mr r3, r30
/* 8036FCFC  38 A4 F3 38 */	addi r5, r4, gTRKCPUState@l /* 0x8044F338@l */
/* 8036FD00  80 85 00 80 */	lwz r4, 0x80(r5)
/* 8036FD04  38 04 00 04 */	addi r0, r4, 4
/* 8036FD08  90 05 00 80 */	stw r0, 0x80(r5)
lbl_8036FD0C:
/* 8036FD0C  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 8036FD10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8036FD14  7C 08 03 A6 */	mtlr r0
/* 8036FD18  38 21 00 40 */	addi r1, r1, 0x40
/* 8036FD1C  4E 80 00 20 */	blr 
