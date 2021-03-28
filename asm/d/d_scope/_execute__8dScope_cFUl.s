lbl_80193B90:
/* 80193B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80193B94  7C 08 02 A6 */	mflr r0
/* 80193B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80193B9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80193BA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80193BA4  7C 7E 1B 78 */	mr r30, r3
/* 80193BA8  8B E3 00 8C */	lbz r31, 0x8c(r3)
/* 80193BAC  1C BF 00 0C */	mulli r5, r31, 0xc
/* 80193BB0  3C 80 80 3C */	lis r4, move_process@ha
/* 80193BB4  38 04 B6 90 */	addi r0, r4, move_process@l
/* 80193BB8  7D 80 2A 14 */	add r12, r0, r5
/* 80193BBC  48 1C E4 C9 */	bl __ptmf_scall
/* 80193BC0  60 00 00 00 */	nop 
/* 80193BC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80193BC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80193BCC  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 80193BD0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80193BD4  40 82 00 0C */	bne lbl_80193BE0
/* 80193BD8  38 00 00 02 */	li r0, 2
/* 80193BDC  98 1E 00 8C */	stb r0, 0x8c(r30)
lbl_80193BE0:
/* 80193BE0  88 1E 00 8C */	lbz r0, 0x8c(r30)
/* 80193BE4  7C 00 F8 40 */	cmplw r0, r31
/* 80193BE8  41 82 00 20 */	beq lbl_80193C08
/* 80193BEC  7F C3 F3 78 */	mr r3, r30
/* 80193BF0  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80193BF4  3C 80 80 3C */	lis r4, init_process@ha
/* 80193BF8  38 04 B6 48 */	addi r0, r4, init_process@l
/* 80193BFC  7D 80 2A 14 */	add r12, r0, r5
/* 80193C00  48 1C E4 85 */	bl __ptmf_scall
/* 80193C04  60 00 00 00 */	nop 
lbl_80193C08:
/* 80193C08  88 1E 00 8C */	lbz r0, 0x8c(r30)
/* 80193C0C  28 00 00 02 */	cmplwi r0, 2
/* 80193C10  41 82 00 3C */	beq lbl_80193C4C
/* 80193C14  38 00 00 3D */	li r0, 0x3d
/* 80193C18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80193C1C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80193C20  98 04 5E 3F */	stb r0, 0x5e3f(r4)
/* 80193C24  38 00 00 0A */	li r0, 0xa
/* 80193C28  98 04 5E 31 */	stb r0, 0x5e31(r4)
/* 80193C2C  38 60 00 03 */	li r3, 3
/* 80193C30  98 64 5E 59 */	stb r3, 0x5e59(r4)
/* 80193C34  80 04 5F 18 */	lwz r0, 0x5f18(r4)
/* 80193C38  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80193C3C  41 82 00 10 */	beq lbl_80193C4C
/* 80193C40  38 00 00 11 */	li r0, 0x11
/* 80193C44  98 04 5E 34 */	stb r0, 0x5e34(r4)
/* 80193C48  98 64 5E 4F */	stb r3, 0x5e4f(r4)
lbl_80193C4C:
/* 80193C4C  38 60 00 01 */	li r3, 1
/* 80193C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80193C54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80193C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80193C5C  7C 08 03 A6 */	mtlr r0
/* 80193C60  38 21 00 10 */	addi r1, r1, 0x10
/* 80193C64  4E 80 00 20 */	blr 
