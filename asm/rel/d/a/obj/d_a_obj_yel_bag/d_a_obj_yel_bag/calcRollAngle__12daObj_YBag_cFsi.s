lbl_80D3D69C:
/* 80D3D69C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3D6A0  7C 08 02 A6 */	mflr r0
/* 80D3D6A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3D6A8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3D6AC  4B 62 4B 30 */	b _savegpr_29
/* 80D3D6B0  7C BD 2B 78 */	mr r29, r5
/* 80D3D6B4  7C 80 07 35 */	extsh. r0, r4
/* 80D3D6B8  41 82 00 68 */	beq lbl_80D3D720
/* 80D3D6BC  54 9F 04 3E */	clrlwi r31, r4, 0x10
/* 80D3D6C0  7F DF E8 50 */	subf r30, r31, r29
/* 80D3D6C4  7F C3 F3 78 */	mr r3, r30
/* 80D3D6C8  4B 62 7A 08 */	b abs
/* 80D3D6CC  2C 03 00 04 */	cmpwi r3, 4
/* 80D3D6D0  40 81 00 44 */	ble lbl_80D3D714
/* 80D3D6D4  7F C0 16 70 */	srawi r0, r30, 2
/* 80D3D6D8  7C 00 01 94 */	addze r0, r0
/* 80D3D6DC  2C 00 08 00 */	cmpwi r0, 0x800
/* 80D3D6E0  40 81 00 0C */	ble lbl_80D3D6EC
/* 80D3D6E4  38 1F 08 00 */	addi r0, r31, 0x800
/* 80D3D6E8  48 00 00 30 */	b lbl_80D3D718
lbl_80D3D6EC:
/* 80D3D6EC  7F C0 16 70 */	srawi r0, r30, 2
/* 80D3D6F0  7C 00 01 94 */	addze r0, r0
/* 80D3D6F4  2C 00 F8 00 */	cmpwi r0, -2048
/* 80D3D6F8  40 80 00 0C */	bge lbl_80D3D704
/* 80D3D6FC  38 1F F8 00 */	addi r0, r31, -2048
/* 80D3D700  48 00 00 18 */	b lbl_80D3D718
lbl_80D3D704:
/* 80D3D704  7F C0 16 70 */	srawi r0, r30, 2
/* 80D3D708  7C 00 01 94 */	addze r0, r0
/* 80D3D70C  7C 1F 02 14 */	add r0, r31, r0
/* 80D3D710  48 00 00 08 */	b lbl_80D3D718
lbl_80D3D714:
/* 80D3D714  7F A0 EB 78 */	mr r0, r29
lbl_80D3D718:
/* 80D3D718  7C 03 07 34 */	extsh r3, r0
/* 80D3D71C  48 00 00 08 */	b lbl_80D3D724
lbl_80D3D720:
/* 80D3D720  38 60 00 00 */	li r3, 0
lbl_80D3D724:
/* 80D3D724  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3D728  4B 62 4B 00 */	b _restgpr_29
/* 80D3D72C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3D730  7C 08 03 A6 */	mtlr r0
/* 80D3D734  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3D738  4E 80 00 20 */	blr 
