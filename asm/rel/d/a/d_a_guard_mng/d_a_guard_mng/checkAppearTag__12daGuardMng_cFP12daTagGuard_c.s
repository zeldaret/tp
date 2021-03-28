lbl_80837BEC:
/* 80837BEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80837BF0  7C 08 02 A6 */	mflr r0
/* 80837BF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80837BF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80837BFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80837C00  7C 7E 1B 78 */	mr r30, r3
/* 80837C04  7C 9F 23 78 */	mr r31, r4
/* 80837C08  7F E3 FB 78 */	mr r3, r31
/* 80837C0C  38 81 00 08 */	addi r4, r1, 8
/* 80837C10  48 52 1B E8 */	b getAppearPoint__12daTagGuard_cFP3Vec
/* 80837C14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80837C18  41 82 00 3C */	beq lbl_80837C54
/* 80837C1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80837C20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80837C24  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80837C28  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 80837C2C  38 61 00 08 */	addi r3, r1, 8
/* 80837C30  7C 65 1B 78 */	mr r5, r3
/* 80837C34  4B B0 F4 80 */	b PSVECSubtract
/* 80837C38  38 61 00 08 */	addi r3, r1, 8
/* 80837C3C  4B B0 F4 FC */	b PSVECSquareMag
/* 80837C40  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 80837C44  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80837C48  40 81 00 0C */	ble lbl_80837C54
/* 80837C4C  93 FE 05 68 */	stw r31, 0x568(r30)
/* 80837C50  D0 3E 05 6C */	stfs f1, 0x56c(r30)
lbl_80837C54:
/* 80837C54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80837C58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80837C5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80837C60  7C 08 03 A6 */	mtlr r0
/* 80837C64  38 21 00 20 */	addi r1, r1, 0x20
/* 80837C68  4E 80 00 20 */	blr 
