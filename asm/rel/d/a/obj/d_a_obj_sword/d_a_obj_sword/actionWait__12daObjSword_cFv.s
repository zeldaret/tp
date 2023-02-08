lbl_80CFDA14:
/* 80CFDA14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFDA18  7C 08 02 A6 */	mflr r0
/* 80CFDA1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFDA20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFDA24  7C 7F 1B 78 */	mr r31, r3
/* 80CFDA28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CFDA2C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CFDA30  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80CFDA34  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80CFDA38  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CFDA3C  41 82 00 2C */	beq lbl_80CFDA68
/* 80CFDA40  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80CFDA44  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CFDA48  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CFDA4C  80 04 05 80 */	lwz r0, 0x580(r4)
/* 80CFDA50  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80CFDA54  41 82 00 20 */	beq lbl_80CFDA74
/* 80CFDA58  4B 31 F1 49 */	bl fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 80CFDA5C  7F E3 FB 78 */	mr r3, r31
/* 80CFDA60  48 00 00 2D */	bl initActionOrderGetDemo__12daObjSword_cFv
/* 80CFDA64  48 00 00 10 */	b lbl_80CFDA74
lbl_80CFDA68:
/* 80CFDA68  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80CFDA6C  60 00 00 10 */	ori r0, r0, 0x10
/* 80CFDA70  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80CFDA74:
/* 80CFDA74  38 60 00 01 */	li r3, 1
/* 80CFDA78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFDA7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFDA80  7C 08 03 A6 */	mtlr r0
/* 80CFDA84  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFDA88  4E 80 00 20 */	blr 
