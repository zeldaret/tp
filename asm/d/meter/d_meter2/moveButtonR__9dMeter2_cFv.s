lbl_80221EC8:
/* 80221EC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80221ECC  7C 08 02 A6 */	mflr r0
/* 80221ED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80221ED4  7C 66 1B 78 */	mr r6, r3
/* 80221ED8  39 00 00 00 */	li r8, 0
/* 80221EDC  38 E0 00 00 */	li r7, 0
/* 80221EE0  80 A3 01 28 */	lwz r5, 0x128(r3)
/* 80221EE4  28 05 00 00 */	cmplwi r5, 0
/* 80221EE8  41 82 00 38 */	beq lbl_80221F20
/* 80221EEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80221EF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80221EF4  88 83 00 16 */	lbz r4, 0x16(r3)
/* 80221EF8  88 66 01 C7 */	lbz r3, 0x1c7(r6)
/* 80221EFC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80221F00  7C 03 00 40 */	cmplw r3, r0
/* 80221F04  40 82 00 10 */	bne lbl_80221F14
/* 80221F08  80 06 01 2C */	lwz r0, 0x12c(r6)
/* 80221F0C  7C 05 00 40 */	cmplw r5, r0
/* 80221F10  41 82 00 10 */	beq lbl_80221F20
lbl_80221F14:
/* 80221F14  98 86 01 C7 */	stb r4, 0x1c7(r6)
/* 80221F18  38 E0 00 01 */	li r7, 1
/* 80221F1C  39 00 00 01 */	li r8, 1
lbl_80221F20:
/* 80221F20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80221F24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80221F28  88 83 5E 34 */	lbz r4, 0x5e34(r3)
/* 80221F2C  28 04 00 00 */	cmplwi r4, 0
/* 80221F30  41 82 00 1C */	beq lbl_80221F4C
/* 80221F34  88 03 5E 4F */	lbz r0, 0x5e4f(r3)
/* 80221F38  98 83 5E 1C */	stb r4, 0x5e1c(r3)
/* 80221F3C  98 03 5E 42 */	stb r0, 0x5e42(r3)
/* 80221F40  38 00 00 00 */	li r0, 0
/* 80221F44  98 03 5E 34 */	stb r0, 0x5e34(r3)
/* 80221F48  98 03 5E 4F */	stb r0, 0x5e4f(r3)
lbl_80221F4C:
/* 80221F4C  88 06 01 C8 */	lbz r0, 0x1c8(r6)
/* 80221F50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80221F54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80221F58  88 83 5E 1C */	lbz r4, 0x5e1c(r3)
/* 80221F5C  7C 00 20 40 */	cmplw r0, r4
/* 80221F60  41 82 00 38 */	beq lbl_80221F98
/* 80221F64  98 86 01 C8 */	stb r4, 0x1c8(r6)
/* 80221F68  88 06 01 C8 */	lbz r0, 0x1c8(r6)
/* 80221F6C  28 00 00 2D */	cmplwi r0, 0x2d
/* 80221F70  41 82 00 0C */	beq lbl_80221F7C
/* 80221F74  28 00 00 2E */	cmplwi r0, 0x2e
/* 80221F78  40 82 00 18 */	bne lbl_80221F90
lbl_80221F7C:
/* 80221F7C  98 03 5E 1C */	stb r0, 0x5e1c(r3)
/* 80221F80  38 00 00 01 */	li r0, 1
/* 80221F84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80221F88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80221F8C  98 03 5E 42 */	stb r0, 0x5e42(r3)
lbl_80221F90:
/* 80221F90  38 E0 00 01 */	li r7, 1
/* 80221F94  39 00 00 01 */	li r8, 1
lbl_80221F98:
/* 80221F98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80221F9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80221FA0  88 03 5E 42 */	lbz r0, 0x5e42(r3)
/* 80221FA4  54 04 07 BC */	rlwinm r4, r0, 0, 0x1e, 0x1e
/* 80221FA8  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 80221FAC  88 06 01 DE */	lbz r0, 0x1de(r6)
/* 80221FB0  7C 00 18 40 */	cmplw r0, r3
/* 80221FB4  41 82 00 18 */	beq lbl_80221FCC
/* 80221FB8  30 04 FF FF */	addic r0, r4, -1
/* 80221FBC  7C 00 21 10 */	subfe r0, r0, r4
/* 80221FC0  98 06 01 DE */	stb r0, 0x1de(r6)
/* 80221FC4  38 E0 00 01 */	li r7, 1
/* 80221FC8  39 00 00 01 */	li r8, 1
lbl_80221FCC:
/* 80221FCC  55 00 06 3F */	clrlwi. r0, r8, 0x18
/* 80221FD0  41 82 00 20 */	beq lbl_80221FF0
/* 80221FD4  80 66 01 0C */	lwz r3, 0x10c(r6)
/* 80221FD8  88 86 01 C7 */	lbz r4, 0x1c7(r6)
/* 80221FDC  88 A6 01 C8 */	lbz r5, 0x1c8(r6)
/* 80221FE0  80 06 01 28 */	lwz r0, 0x128(r6)
/* 80221FE4  7C 00 00 34 */	cntlzw r0, r0
/* 80221FE8  54 06 D9 7E */	srwi r6, r0, 5
/* 80221FEC  4B FF 56 61 */	bl drawButtonR__13dMeter2Draw_cFUcUcbb
lbl_80221FF0:
/* 80221FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80221FF4  7C 08 03 A6 */	mtlr r0
/* 80221FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80221FFC  4E 80 00 20 */	blr 
