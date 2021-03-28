lbl_80AFDEC0:
/* 80AFDEC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AFDEC4  7C 08 02 A6 */	mflr r0
/* 80AFDEC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AFDECC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AFDED0  4B 86 43 00 */	b _savegpr_26
/* 80AFDED4  7C 7B 1B 78 */	mr r27, r3
/* 80AFDED8  7C 9C 23 78 */	mr r28, r4
/* 80AFDEDC  7C BD 2B 78 */	mr r29, r5
/* 80AFDEE0  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80AFDEE4  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 80AFDEE8  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80AFDEEC  3B E0 00 00 */	li r31, 0
/* 80AFDEF0  3B C0 00 00 */	li r30, 0
/* 80AFDEF4  54 9A 18 38 */	slwi r26, r4, 3
/* 80AFDEF8  3C 80 80 B0 */	lis r4, l_bckGetParamList@ha
/* 80AFDEFC  38 84 10 4C */	addi r4, r4, l_bckGetParamList@l
/* 80AFDF00  7C A4 D0 2E */	lwzx r5, r4, r26
/* 80AFDF04  2C 05 00 00 */	cmpwi r5, 0
/* 80AFDF08  41 80 00 28 */	blt lbl_80AFDF30
/* 80AFDF0C  3C 80 80 B0 */	lis r4, l_arcName@ha
/* 80AFDF10  38 84 10 E4 */	addi r4, r4, l_arcName@l
/* 80AFDF14  80 84 00 00 */	lwz r4, 0(r4)
/* 80AFDF18  4B 65 4C 14 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AFDF1C  7C 7F 1B 78 */	mr r31, r3
/* 80AFDF20  3C 60 80 B0 */	lis r3, l_bckGetParamList@ha
/* 80AFDF24  38 03 10 4C */	addi r0, r3, l_bckGetParamList@l
/* 80AFDF28  7C 60 D2 14 */	add r3, r0, r26
/* 80AFDF2C  83 C3 00 04 */	lwz r30, 4(r3)
lbl_80AFDF30:
/* 80AFDF30  38 60 00 00 */	li r3, 0
/* 80AFDF34  28 1C 00 07 */	cmplwi r28, 7
/* 80AFDF38  41 81 00 FC */	bgt lbl_80AFE034
/* 80AFDF3C  3C 80 80 B0 */	lis r4, lit_4699@ha
/* 80AFDF40  38 84 11 70 */	addi r4, r4, lit_4699@l
/* 80AFDF44  57 80 10 3A */	slwi r0, r28, 2
/* 80AFDF48  7C 04 00 2E */	lwzx r0, r4, r0
/* 80AFDF4C  7C 09 03 A6 */	mtctr r0
/* 80AFDF50  4E 80 04 20 */	bctr 
lbl_80AFDF54:
/* 80AFDF54  7F 63 DB 78 */	mr r3, r27
/* 80AFDF58  38 80 00 00 */	li r4, 0
/* 80AFDF5C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFDF60  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AFDF64  7D 89 03 A6 */	mtctr r12
/* 80AFDF68  4E 80 04 21 */	bctrl 
/* 80AFDF6C  48 00 00 CC */	b lbl_80AFE038
lbl_80AFDF70:
/* 80AFDF70  7F 63 DB 78 */	mr r3, r27
/* 80AFDF74  38 80 00 00 */	li r4, 0
/* 80AFDF78  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFDF7C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AFDF80  7D 89 03 A6 */	mtctr r12
/* 80AFDF84  4E 80 04 21 */	bctrl 
/* 80AFDF88  48 00 00 B0 */	b lbl_80AFE038
lbl_80AFDF8C:
/* 80AFDF8C  7F 63 DB 78 */	mr r3, r27
/* 80AFDF90  38 80 00 00 */	li r4, 0
/* 80AFDF94  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFDF98  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AFDF9C  7D 89 03 A6 */	mtctr r12
/* 80AFDFA0  4E 80 04 21 */	bctrl 
/* 80AFDFA4  48 00 00 94 */	b lbl_80AFE038
lbl_80AFDFA8:
/* 80AFDFA8  7F 63 DB 78 */	mr r3, r27
/* 80AFDFAC  38 80 00 00 */	li r4, 0
/* 80AFDFB0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFDFB4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AFDFB8  7D 89 03 A6 */	mtctr r12
/* 80AFDFBC  4E 80 04 21 */	bctrl 
/* 80AFDFC0  48 00 00 78 */	b lbl_80AFE038
lbl_80AFDFC4:
/* 80AFDFC4  7F 63 DB 78 */	mr r3, r27
/* 80AFDFC8  38 80 00 00 */	li r4, 0
/* 80AFDFCC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFDFD0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AFDFD4  7D 89 03 A6 */	mtctr r12
/* 80AFDFD8  4E 80 04 21 */	bctrl 
/* 80AFDFDC  48 00 00 5C */	b lbl_80AFE038
lbl_80AFDFE0:
/* 80AFDFE0  7F 63 DB 78 */	mr r3, r27
/* 80AFDFE4  38 80 00 00 */	li r4, 0
/* 80AFDFE8  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFDFEC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AFDFF0  7D 89 03 A6 */	mtctr r12
/* 80AFDFF4  4E 80 04 21 */	bctrl 
/* 80AFDFF8  48 00 00 40 */	b lbl_80AFE038
lbl_80AFDFFC:
/* 80AFDFFC  7F 63 DB 78 */	mr r3, r27
/* 80AFE000  38 80 00 00 */	li r4, 0
/* 80AFE004  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFE008  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AFE00C  7D 89 03 A6 */	mtctr r12
/* 80AFE010  4E 80 04 21 */	bctrl 
/* 80AFE014  48 00 00 24 */	b lbl_80AFE038
lbl_80AFE018:
/* 80AFE018  7F 63 DB 78 */	mr r3, r27
/* 80AFE01C  38 80 00 00 */	li r4, 0
/* 80AFE020  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFE024  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AFE028  7D 89 03 A6 */	mtctr r12
/* 80AFE02C  4E 80 04 21 */	bctrl 
/* 80AFE030  48 00 00 08 */	b lbl_80AFE038
lbl_80AFE034:
/* 80AFE034  3B E0 00 00 */	li r31, 0
lbl_80AFE038:
/* 80AFE038  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AFE03C  40 82 00 0C */	bne lbl_80AFE048
/* 80AFE040  38 60 00 00 */	li r3, 0
/* 80AFE044  48 00 00 60 */	b lbl_80AFE0A4
lbl_80AFE048:
/* 80AFE048  28 1F 00 00 */	cmplwi r31, 0
/* 80AFE04C  40 82 00 0C */	bne lbl_80AFE058
/* 80AFE050  38 60 00 01 */	li r3, 1
/* 80AFE054  48 00 00 50 */	b lbl_80AFE0A4
lbl_80AFE058:
/* 80AFE058  7F 63 DB 78 */	mr r3, r27
/* 80AFE05C  7F E4 FB 78 */	mr r4, r31
/* 80AFE060  3C A0 80 B0 */	lis r5, lit_4247@ha
/* 80AFE064  C0 25 0D EC */	lfs f1, lit_4247@l(r5)
/* 80AFE068  7F C5 F3 78 */	mr r5, r30
/* 80AFE06C  38 C0 00 00 */	li r6, 0
/* 80AFE070  38 E0 FF FF */	li r7, -1
/* 80AFE074  7F A8 EB 78 */	mr r8, r29
/* 80AFE078  4B 65 4C 08 */	b setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 80AFE07C  2C 03 00 00 */	cmpwi r3, 0
/* 80AFE080  41 82 00 20 */	beq lbl_80AFE0A0
/* 80AFE084  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 80AFE088  60 00 01 40 */	ori r0, r0, 0x140
/* 80AFE08C  90 1B 09 9C */	stw r0, 0x99c(r27)
/* 80AFE090  38 00 00 00 */	li r0, 0
/* 80AFE094  B0 1B 09 E4 */	sth r0, 0x9e4(r27)
/* 80AFE098  38 60 00 01 */	li r3, 1
/* 80AFE09C  48 00 00 08 */	b lbl_80AFE0A4
lbl_80AFE0A0:
/* 80AFE0A0  38 60 00 00 */	li r3, 0
lbl_80AFE0A4:
/* 80AFE0A4  39 61 00 20 */	addi r11, r1, 0x20
/* 80AFE0A8  4B 86 41 74 */	b _restgpr_26
/* 80AFE0AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AFE0B0  7C 08 03 A6 */	mtlr r0
/* 80AFE0B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AFE0B8  4E 80 00 20 */	blr 
