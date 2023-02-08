lbl_80CAEDDC:
/* 80CAEDDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CAEDE0  7C 08 02 A6 */	mflr r0
/* 80CAEDE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CAEDE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAEDEC  4B 6B 33 ED */	bl _savegpr_28
/* 80CAEDF0  7C 7C 1B 78 */	mr r28, r3
/* 80CAEDF4  3B A0 00 00 */	li r29, 0
/* 80CAEDF8  3B E0 00 00 */	li r31, 0
lbl_80CAEDFC:
/* 80CAEDFC  3B DF 09 EC */	addi r30, r31, 0x9ec
/* 80CAEE00  7F DC F2 14 */	add r30, r28, r30
/* 80CAEE04  7F C3 F3 78 */	mr r3, r30
/* 80CAEE08  4B 3D 56 59 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CAEE0C  28 03 00 00 */	cmplwi r3, 0
/* 80CAEE10  41 82 00 54 */	beq lbl_80CAEE64
/* 80CAEE14  7F C3 F3 78 */	mr r3, r30
/* 80CAEE18  4B 3D 56 E1 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80CAEE1C  28 03 00 00 */	cmplwi r3, 0
/* 80CAEE20  41 82 00 30 */	beq lbl_80CAEE50
/* 80CAEE24  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80CAEE28  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80CAEE2C  41 82 00 24 */	beq lbl_80CAEE50
/* 80CAEE30  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80CAEE34  D0 1C 0C 88 */	stfs f0, 0xc88(r28)
/* 80CAEE38  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80CAEE3C  D0 1C 0C 8C */	stfs f0, 0xc8c(r28)
/* 80CAEE40  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80CAEE44  D0 1C 0C 90 */	stfs f0, 0xc90(r28)
/* 80CAEE48  38 60 00 01 */	li r3, 1
/* 80CAEE4C  48 00 00 2C */	b lbl_80CAEE78
lbl_80CAEE50:
/* 80CAEE50  7F C3 F3 78 */	mr r3, r30
/* 80CAEE54  81 9E 00 3C */	lwz r12, 0x3c(r30)
/* 80CAEE58  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CAEE5C  7D 89 03 A6 */	mtctr r12
/* 80CAEE60  4E 80 04 21 */	bctrl 
lbl_80CAEE64:
/* 80CAEE64  3B BD 00 01 */	addi r29, r29, 1
/* 80CAEE68  2C 1D 00 02 */	cmpwi r29, 2
/* 80CAEE6C  3B FF 01 44 */	addi r31, r31, 0x144
/* 80CAEE70  41 80 FF 8C */	blt lbl_80CAEDFC
/* 80CAEE74  38 60 00 00 */	li r3, 0
lbl_80CAEE78:
/* 80CAEE78  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAEE7C  4B 6B 33 A9 */	bl _restgpr_28
/* 80CAEE80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CAEE84  7C 08 03 A6 */	mtlr r0
/* 80CAEE88  38 21 00 20 */	addi r1, r1, 0x20
/* 80CAEE8C  4E 80 00 20 */	blr 
