lbl_80D28C10:
/* 80D28C10  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D28C14  7C 08 02 A6 */	mflr r0
/* 80D28C18  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D28C1C  39 61 00 40 */	addi r11, r1, 0x40
/* 80D28C20  4B 63 95 AC */	b _savegpr_25
/* 80D28C24  7C 7E 1B 78 */	mr r30, r3
/* 80D28C28  3B E0 00 00 */	li r31, 0
/* 80D28C2C  3B A0 00 00 */	li r29, 0
/* 80D28C30  3B 80 00 00 */	li r28, 0
/* 80D28C34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D28C38  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 80D28C3C  3C 60 80 D3 */	lis r3, l_bind_eff@ha
/* 80D28C40  3B 43 95 F8 */	addi r26, r3, l_bind_eff@l
/* 80D28C44  3C 60 80 D3 */	lis r3, lit_3964@ha
/* 80D28C48  3B 63 96 34 */	addi r27, r3, lit_3964@l
lbl_80D28C4C:
/* 80D28C4C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80D28C50  38 80 00 00 */	li r4, 0
/* 80D28C54  90 81 00 08 */	stw r4, 8(r1)
/* 80D28C58  38 00 FF FF */	li r0, -1
/* 80D28C5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D28C60  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D28C64  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D28C68  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D28C6C  38 80 00 00 */	li r4, 0
/* 80D28C70  7C BA E2 2E */	lhzx r5, r26, r28
/* 80D28C74  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D28C78  38 E0 00 00 */	li r7, 0
/* 80D28C7C  39 1E 04 B4 */	addi r8, r30, 0x4b4
/* 80D28C80  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80D28C84  39 40 00 FF */	li r10, 0xff
/* 80D28C88  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80D28C8C  4B 32 3E 04 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D28C90  38 1D 06 88 */	addi r0, r29, 0x688
/* 80D28C94  7C 7E 01 2E */	stwx r3, r30, r0
/* 80D28C98  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80D28C9C  28 03 00 00 */	cmplwi r3, 0
/* 80D28CA0  41 82 00 10 */	beq lbl_80D28CB0
/* 80D28CA4  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D28CA8  60 00 00 40 */	ori r0, r0, 0x40
/* 80D28CAC  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80D28CB0:
/* 80D28CB0  3B FF 00 01 */	addi r31, r31, 1
/* 80D28CB4  2C 1F 00 04 */	cmpwi r31, 4
/* 80D28CB8  3B BD 00 04 */	addi r29, r29, 4
/* 80D28CBC  3B 9C 00 02 */	addi r28, r28, 2
/* 80D28CC0  41 80 FF 8C */	blt lbl_80D28C4C
/* 80D28CC4  39 61 00 40 */	addi r11, r1, 0x40
/* 80D28CC8  4B 63 95 50 */	b _restgpr_25
/* 80D28CCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D28CD0  7C 08 03 A6 */	mtlr r0
/* 80D28CD4  38 21 00 40 */	addi r1, r1, 0x40
/* 80D28CD8  4E 80 00 20 */	blr 
