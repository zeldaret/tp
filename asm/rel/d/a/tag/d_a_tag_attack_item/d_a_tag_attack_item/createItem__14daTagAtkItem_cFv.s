lbl_805A2F54:
/* 805A2F54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A2F58  7C 08 02 A6 */	mflr r0
/* 805A2F5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A2F60  39 61 00 40 */	addi r11, r1, 0x40
/* 805A2F64  4B DB F2 71 */	bl _savegpr_27
/* 805A2F68  7C 7B 1B 78 */	mr r27, r3
/* 805A2F6C  38 61 00 10 */	addi r3, r1, 0x10
/* 805A2F70  38 80 00 00 */	li r4, 0
/* 805A2F74  38 A0 00 00 */	li r5, 0
/* 805A2F78  38 C0 00 00 */	li r6, 0
/* 805A2F7C  4B CC 44 79 */	bl __ct__5csXyzFsss
/* 805A2F80  80 7B 00 B0 */	lwz r3, 0xb0(r27)
/* 805A2F84  54 60 C6 3E */	rlwinm r0, r3, 0x18, 0x18, 0x1f
/* 805A2F88  28 00 00 FF */	cmplwi r0, 0xff
/* 805A2F8C  3B C0 00 01 */	li r30, 1
/* 805A2F90  41 82 00 08 */	beq lbl_805A2F98
/* 805A2F94  7C 1E 03 78 */	mr r30, r0
lbl_805A2F98:
/* 805A2F98  54 60 86 3E */	rlwinm r0, r3, 0x10, 0x18, 0x1f
/* 805A2F9C  7C 1D 03 78 */	mr r29, r0
/* 805A2FA0  3B 80 00 00 */	li r28, 0
/* 805A2FA4  3C 60 80 5A */	lis r3, lit_3898@ha /* 0x805A32F0@ha */
/* 805A2FA8  3B E3 32 F0 */	addi r31, r3, lit_3898@l /* 0x805A32F0@l */
/* 805A2FAC  48 00 00 6C */	b lbl_805A3018
lbl_805A2FB0:
/* 805A2FB0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805A2FB4  4B CC 49 D9 */	bl cM_rndFX__Ff
/* 805A2FB8  FC 00 08 1E */	fctiwz f0, f1
/* 805A2FBC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805A2FC0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 805A2FC4  A8 01 00 12 */	lha r0, 0x12(r1)
/* 805A2FC8  7C 00 1A 14 */	add r0, r0, r3
/* 805A2FCC  B0 01 00 12 */	sth r0, 0x12(r1)
/* 805A2FD0  38 00 00 00 */	li r0, 0
/* 805A2FD4  90 01 00 08 */	stw r0, 8(r1)
/* 805A2FD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A2FDC  38 7B 04 A8 */	addi r3, r27, 0x4a8
/* 805A2FE0  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 805A2FE4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 805A2FE8  7F A5 EB 78 */	mr r5, r29
/* 805A2FEC  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 805A2FF0  7C 06 07 74 */	extsb r6, r0
/* 805A2FF4  38 E1 00 10 */	addi r7, r1, 0x10
/* 805A2FF8  39 00 00 00 */	li r8, 0
/* 805A2FFC  39 20 00 00 */	li r9, 0
/* 805A3000  39 40 00 00 */	li r10, 0
/* 805A3004  4B A7 8F 61 */	bl fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb
/* 805A3008  2C 1D 00 FF */	cmpwi r29, 0xff
/* 805A300C  41 82 00 08 */	beq lbl_805A3014
/* 805A3010  3B BD 00 01 */	addi r29, r29, 1
lbl_805A3014:
/* 805A3014  3B 9C 00 01 */	addi r28, r28, 1
lbl_805A3018:
/* 805A3018  7C 1C F0 00 */	cmpw r28, r30
/* 805A301C  41 80 FF 94 */	blt lbl_805A2FB0
/* 805A3020  39 61 00 40 */	addi r11, r1, 0x40
/* 805A3024  4B DB F1 FD */	bl _restgpr_27
/* 805A3028  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A302C  7C 08 03 A6 */	mtlr r0
/* 805A3030  38 21 00 40 */	addi r1, r1, 0x40
/* 805A3034  4E 80 00 20 */	blr 
