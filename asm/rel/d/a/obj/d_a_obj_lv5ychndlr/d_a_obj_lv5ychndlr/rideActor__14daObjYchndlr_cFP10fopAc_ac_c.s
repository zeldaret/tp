lbl_80C6D9A8:
/* 80C6D9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D9AC  7C 08 02 A6 */	mflr r0
/* 80C6D9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D9B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6D9B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6D9BC  7C 7E 1B 78 */	mr r30, r3
/* 80C6D9C0  38 00 00 01 */	li r0, 1
/* 80C6D9C4  98 03 0C 8C */	stb r0, 0xc8c(r3)
/* 80C6D9C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6D9CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6D9D0  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80C6D9D4  7C 04 F8 40 */	cmplw r4, r31
/* 80C6D9D8  40 82 00 6C */	bne lbl_80C6DA44
/* 80C6D9DC  7F E3 FB 78 */	mr r3, r31
/* 80C6D9E0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80C6D9E4  81 8C 01 FC */	lwz r12, 0x1fc(r12)
/* 80C6D9E8  7D 89 03 A6 */	mtctr r12
/* 80C6D9EC  4E 80 04 21 */	bctrl 
/* 80C6D9F0  2C 03 00 00 */	cmpwi r3, 0
/* 80C6D9F4  41 82 00 50 */	beq lbl_80C6DA44
/* 80C6D9F8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80C6D9FC  4B 41 6A 64 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C6DA00  28 03 00 00 */	cmplwi r3, 0
/* 80C6DA04  40 82 00 40 */	bne lbl_80C6DA44
/* 80C6DA08  3C 60 80 C7 */	lis r3, lit_3718@ha
/* 80C6DA0C  C0 03 E9 A8 */	lfs f0, lit_3718@l(r3)
/* 80C6DA10  D0 1E 0C 90 */	stfs f0, 0xc90(r30)
/* 80C6DA14  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C6DA18  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C6DA1C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C6DA20  3C 60 80 C7 */	lis r3, lit_3699@ha
/* 80C6DA24  C0 03 E9 A0 */	lfs f0, lit_3699@l(r3)
/* 80C6DA28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6DA2C  40 81 00 10 */	ble lbl_80C6DA3C
/* 80C6DA30  38 00 00 00 */	li r0, 0
/* 80C6DA34  98 1E 06 20 */	stb r0, 0x620(r30)
/* 80C6DA38  48 00 00 0C */	b lbl_80C6DA44
lbl_80C6DA3C:
/* 80C6DA3C  38 00 00 01 */	li r0, 1
/* 80C6DA40  98 1E 06 20 */	stb r0, 0x620(r30)
lbl_80C6DA44:
/* 80C6DA44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6DA48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6DA4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6DA50  7C 08 03 A6 */	mtlr r0
/* 80C6DA54  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6DA58  4E 80 00 20 */	blr 
