lbl_80CA54E4:
/* 80CA54E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA54E8  7C 08 02 A6 */	mflr r0
/* 80CA54EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA54F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA54F4  7C 7F 1B 78 */	mr r31, r3
/* 80CA54F8  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80CA54FC  4B 3D EF 65 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CA5500  28 03 00 00 */	cmplwi r3, 0
/* 80CA5504  41 82 00 4C */	beq lbl_80CA5550
/* 80CA5508  C0 1F 14 20 */	lfs f0, 0x1420(r31)
/* 80CA550C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80CA5510  C0 1F 14 24 */	lfs f0, 0x1424(r31)
/* 80CA5514  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80CA5518  C0 1F 14 28 */	lfs f0, 0x1428(r31)
/* 80CA551C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80CA5520  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80CA5524  4B 3D EF D5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80CA5528  7C 64 1B 78 */	mr r4, r3
/* 80CA552C  38 7F 06 EC */	addi r3, r31, 0x6ec
/* 80CA5530  38 A0 00 2A */	li r5, 0x2a
/* 80CA5534  38 C0 00 00 */	li r6, 0
/* 80CA5538  4B 3E 1F DD */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80CA553C  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80CA5540  81 9F 13 88 */	lwz r12, 0x1388(r31)
/* 80CA5544  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CA5548  7D 89 03 A6 */	mtctr r12
/* 80CA554C  4E 80 04 21 */	bctrl 
lbl_80CA5550:
/* 80CA5550  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80CA5554  4B 3D F1 05 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80CA5558  28 03 00 00 */	cmplwi r3, 0
/* 80CA555C  41 82 00 54 */	beq lbl_80CA55B0
/* 80CA5560  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80CA5564  4B 3D F1 8D */	bl GetCoHitObj__12dCcD_GObjInfFv
/* 80CA5568  80 63 00 44 */	lwz r3, 0x44(r3)
/* 80CA556C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80CA5570  28 00 00 FF */	cmplwi r0, 0xff
/* 80CA5574  40 82 00 3C */	bne lbl_80CA55B0
/* 80CA5578  88 7F 06 CB */	lbz r3, 0x6cb(r31)
/* 80CA557C  38 03 00 01 */	addi r0, r3, 1
/* 80CA5580  98 1F 06 CB */	stb r0, 0x6cb(r31)
/* 80CA5584  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80CA5588  28 03 00 00 */	cmplwi r3, 0
/* 80CA558C  41 82 00 24 */	beq lbl_80CA55B0
/* 80CA5590  4B 5C 2C 45 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80CA5594  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA5598  41 82 00 18 */	beq lbl_80CA55B0
/* 80CA559C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA55A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA55A4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CA55A8  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80CA55AC  4B 3C EC A5 */	bl Release__4cBgSFP9dBgW_Base
lbl_80CA55B0:
/* 80CA55B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA55B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA55B8  7C 08 03 A6 */	mtlr r0
/* 80CA55BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA55C0  4E 80 00 20 */	blr 
