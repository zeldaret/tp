lbl_8022E9C0:
/* 8022E9C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8022E9C4  7C 08 02 A6 */	mflr r0
/* 8022E9C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8022E9CC  39 61 00 40 */	addi r11, r1, 0x40
/* 8022E9D0  48 13 38 0D */	bl _savegpr_29
/* 8022E9D4  7C 7F 1B 78 */	mr r31, r3
/* 8022E9D8  7C 9D 23 78 */	mr r29, r4
/* 8022E9DC  7F A0 07 35 */	extsh. r0, r29
/* 8022E9E0  41 82 00 EC */	beq lbl_8022EACC
/* 8022E9E4  7F A0 07 35 */	extsh. r0, r29
/* 8022E9E8  40 80 00 48 */	bge lbl_8022EA30
/* 8022E9EC  38 61 00 18 */	addi r3, r1, 0x18
/* 8022E9F0  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha
/* 8022E9F4  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l
/* 8022E9F8  38 84 00 3A */	addi r4, r4, 0x3a
/* 8022E9FC  7F A0 07 34 */	extsh r0, r29
/* 8022EA00  7F C0 00 D0 */	neg r30, r0
/* 8022EA04  7F C5 F3 78 */	mr r5, r30
/* 8022EA08  4C C6 31 82 */	crclr 6
/* 8022EA0C  48 13 7A D1 */	bl sprintf
/* 8022EA10  38 61 00 08 */	addi r3, r1, 8
/* 8022EA14  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha
/* 8022EA18  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l
/* 8022EA1C  38 84 00 10 */	addi r4, r4, 0x10
/* 8022EA20  7F C5 F3 78 */	mr r5, r30
/* 8022EA24  4C C6 31 82 */	crclr 6
/* 8022EA28  48 13 7A B5 */	bl sprintf
/* 8022EA2C  48 00 00 40 */	b lbl_8022EA6C
lbl_8022EA30:
/* 8022EA30  38 61 00 18 */	addi r3, r1, 0x18
/* 8022EA34  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha
/* 8022EA38  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l
/* 8022EA3C  38 84 00 10 */	addi r4, r4, 0x10
/* 8022EA40  7F BE 07 34 */	extsh r30, r29
/* 8022EA44  7F C5 F3 78 */	mr r5, r30
/* 8022EA48  4C C6 31 82 */	crclr 6
/* 8022EA4C  48 13 7A 91 */	bl sprintf
/* 8022EA50  38 61 00 08 */	addi r3, r1, 8
/* 8022EA54  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha
/* 8022EA58  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l
/* 8022EA5C  38 84 00 3A */	addi r4, r4, 0x3a
/* 8022EA60  7F C5 F3 78 */	mr r5, r30
/* 8022EA64  4C C6 31 82 */	crclr 6
/* 8022EA68  48 13 7A 75 */	bl sprintf
lbl_8022EA6C:
/* 8022EA6C  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 8022EA70  7F A0 07 34 */	extsh r0, r29
/* 8022EA74  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022EA78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022EA7C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8022EA80  3C 00 43 30 */	lis r0, 0x4330
/* 8022EA84  90 01 00 28 */	stw r0, 0x28(r1)
/* 8022EA88  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8022EA8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022EA90  EC 02 00 28 */	fsubs f0, f2, f0
/* 8022EA94  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 8022EA98  7F E3 FB 78 */	mr r3, r31
/* 8022EA9C  38 81 00 18 */	addi r4, r1, 0x18
/* 8022EAA0  38 A0 00 00 */	li r5, 0
/* 8022EAA4  38 C0 00 01 */	li r6, 1
/* 8022EAA8  38 E0 00 01 */	li r7, 1
/* 8022EAAC  48 00 04 55 */	bl do_strcat__28jmessage_tRenderingProcessorFPcbbb
/* 8022EAB0  80 DF 00 04 */	lwz r6, 4(r31)
/* 8022EAB4  7F E3 FB 78 */	mr r3, r31
/* 8022EAB8  38 81 00 08 */	addi r4, r1, 8
/* 8022EABC  38 A6 0E 1C */	addi r5, r6, 0xe1c
/* 8022EAC0  C0 26 04 3C */	lfs f1, 0x43c(r6)
/* 8022EAC4  C0 42 B0 60 */	lfs f2, lit_4027(r2)
/* 8022EAC8  48 00 08 BD */	bl do_rubystrcat__28jmessage_tRenderingProcessorFPcPcff
lbl_8022EACC:
/* 8022EACC  39 61 00 40 */	addi r11, r1, 0x40
/* 8022EAD0  48 13 37 59 */	bl _restgpr_29
/* 8022EAD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8022EAD8  7C 08 03 A6 */	mtlr r0
/* 8022EADC  38 21 00 40 */	addi r1, r1, 0x40
/* 8022EAE0  4E 80 00 20 */	blr 
