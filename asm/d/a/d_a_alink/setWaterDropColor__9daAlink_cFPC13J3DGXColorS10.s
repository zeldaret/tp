lbl_800CC364:
/* 800CC364  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800CC368  7C 08 02 A6 */	mflr r0
/* 800CC36C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CC370  39 61 00 20 */	addi r11, r1, 0x20
/* 800CC374  48 29 5E 69 */	bl _savegpr_29
/* 800CC378  7C 7D 1B 78 */	mr r29, r3
/* 800CC37C  7C 9E 23 78 */	mr r30, r4
/* 800CC380  38 1D 32 A0 */	addi r0, r29, 0x32a0
/* 800CC384  7C 00 F0 40 */	cmplw r0, r30
/* 800CC388  40 82 00 40 */	bne lbl_800CC3C8
/* 800CC38C  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 800CC390  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 800CC394  40 82 00 20 */	bne lbl_800CC3B4
/* 800CC398  4B FF 3A 19 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800CC39C  2C 03 00 00 */	cmpwi r3, 0
/* 800CC3A0  40 82 00 14 */	bne lbl_800CC3B4
/* 800CC3A4  7F A3 EB 78 */	mr r3, r29
/* 800CC3A8  4B FF 3A 55 */	bl checkMagicArmorWearAbility__9daAlink_cCFv
/* 800CC3AC  2C 03 00 00 */	cmpwi r3, 0
/* 800CC3B0  41 82 00 10 */	beq lbl_800CC3C0
lbl_800CC3B4:
/* 800CC3B4  3B E2 99 3C */	la r31, notColor0(r2) /* 8045333C-_SDA2_BASE_ */
/* 800CC3B8  3B C2 99 3C */	la r30, notColor0(r2) /* 8045333C-_SDA2_BASE_ */
/* 800CC3BC  48 00 00 10 */	b lbl_800CC3CC
lbl_800CC3C0:
/* 800CC3C0  3B FE 00 08 */	addi r31, r30, 8
/* 800CC3C4  48 00 00 08 */	b lbl_800CC3CC
lbl_800CC3C8:
/* 800CC3C8  7F DF F3 78 */	mr r31, r30
lbl_800CC3CC:
/* 800CC3CC  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 800CC3D0  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 800CC3D4  40 82 03 F0 */	bne lbl_800CC7C4
/* 800CC3D8  7F A3 EB 78 */	mr r3, r29
/* 800CC3DC  4B FF 39 D5 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800CC3E0  2C 03 00 00 */	cmpwi r3, 0
/* 800CC3E4  41 82 00 AC */	beq lbl_800CC490
/* 800CC3E8  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC3EC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC3F0  80 63 00 34 */	lwz r3, 0x34(r3)
/* 800CC3F4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC3F8  38 80 00 01 */	li r4, 1
/* 800CC3FC  7F C5 F3 78 */	mr r5, r30
/* 800CC400  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC404  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC408  7D 89 03 A6 */	mtctr r12
/* 800CC40C  4E 80 04 21 */	bctrl 
/* 800CC410  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC414  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC418  80 63 00 00 */	lwz r3, 0(r3)
/* 800CC41C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC420  38 80 00 01 */	li r4, 1
/* 800CC424  7F C5 F3 78 */	mr r5, r30
/* 800CC428  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC42C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC430  7D 89 03 A6 */	mtctr r12
/* 800CC434  4E 80 04 21 */	bctrl 
/* 800CC438  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC43C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC440  80 63 00 04 */	lwz r3, 4(r3)
/* 800CC444  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC448  38 80 00 01 */	li r4, 1
/* 800CC44C  7F C5 F3 78 */	mr r5, r30
/* 800CC450  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC454  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC458  7D 89 03 A6 */	mtctr r12
/* 800CC45C  4E 80 04 21 */	bctrl 
/* 800CC460  80 7D 06 58 */	lwz r3, 0x658(r29)
/* 800CC464  80 63 00 04 */	lwz r3, 4(r3)
/* 800CC468  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC46C  80 63 00 04 */	lwz r3, 4(r3)
/* 800CC470  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC474  38 80 00 01 */	li r4, 1
/* 800CC478  7F C5 F3 78 */	mr r5, r30
/* 800CC47C  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC480  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC484  7D 89 03 A6 */	mtctr r12
/* 800CC488  4E 80 04 21 */	bctrl 
/* 800CC48C  48 00 03 38 */	b lbl_800CC7C4
lbl_800CC490:
/* 800CC490  7F A3 EB 78 */	mr r3, r29
/* 800CC494  4B FF 39 69 */	bl checkMagicArmorWearAbility__9daAlink_cCFv
/* 800CC498  2C 03 00 00 */	cmpwi r3, 0
/* 800CC49C  41 82 01 28 */	beq lbl_800CC5C4
/* 800CC4A0  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC4A4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC4A8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC4AC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC4B0  38 80 00 01 */	li r4, 1
/* 800CC4B4  7F C5 F3 78 */	mr r5, r30
/* 800CC4B8  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC4BC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC4C0  7D 89 03 A6 */	mtctr r12
/* 800CC4C4  4E 80 04 21 */	bctrl 
/* 800CC4C8  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC4CC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC4D0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 800CC4D4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC4D8  38 80 00 01 */	li r4, 1
/* 800CC4DC  7F C5 F3 78 */	mr r5, r30
/* 800CC4E0  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC4E4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC4E8  7D 89 03 A6 */	mtctr r12
/* 800CC4EC  4E 80 04 21 */	bctrl 
/* 800CC4F0  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC4F4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC4F8  80 63 00 24 */	lwz r3, 0x24(r3)
/* 800CC4FC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC500  38 80 00 01 */	li r4, 1
/* 800CC504  7F C5 F3 78 */	mr r5, r30
/* 800CC508  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC50C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC510  7D 89 03 A6 */	mtctr r12
/* 800CC514  4E 80 04 21 */	bctrl 
/* 800CC518  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC51C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC520  80 63 00 20 */	lwz r3, 0x20(r3)
/* 800CC524  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC528  38 80 00 01 */	li r4, 1
/* 800CC52C  7F C5 F3 78 */	mr r5, r30
/* 800CC530  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC534  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC538  7D 89 03 A6 */	mtctr r12
/* 800CC53C  4E 80 04 21 */	bctrl 
/* 800CC540  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC544  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC548  80 63 00 18 */	lwz r3, 0x18(r3)
/* 800CC54C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC550  38 80 00 01 */	li r4, 1
/* 800CC554  7F C5 F3 78 */	mr r5, r30
/* 800CC558  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC55C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC560  7D 89 03 A6 */	mtctr r12
/* 800CC564  4E 80 04 21 */	bctrl 
/* 800CC568  80 7D 06 58 */	lwz r3, 0x658(r29)
/* 800CC56C  80 63 00 04 */	lwz r3, 4(r3)
/* 800CC570  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC574  80 63 00 08 */	lwz r3, 8(r3)
/* 800CC578  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC57C  38 80 00 01 */	li r4, 1
/* 800CC580  7F C5 F3 78 */	mr r5, r30
/* 800CC584  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC588  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC58C  7D 89 03 A6 */	mtctr r12
/* 800CC590  4E 80 04 21 */	bctrl 
/* 800CC594  80 7D 06 58 */	lwz r3, 0x658(r29)
/* 800CC598  80 63 00 04 */	lwz r3, 4(r3)
/* 800CC59C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC5A0  80 63 00 04 */	lwz r3, 4(r3)
/* 800CC5A4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC5A8  38 80 00 01 */	li r4, 1
/* 800CC5AC  7F C5 F3 78 */	mr r5, r30
/* 800CC5B0  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC5B4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC5B8  7D 89 03 A6 */	mtctr r12
/* 800CC5BC  4E 80 04 21 */	bctrl 
/* 800CC5C0  48 00 02 04 */	b lbl_800CC7C4
lbl_800CC5C4:
/* 800CC5C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800CC5C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800CC5CC  88 03 00 13 */	lbz r0, 0x13(r3)
/* 800CC5D0  28 00 00 2E */	cmplwi r0, 0x2e
/* 800CC5D4  40 82 00 84 */	bne lbl_800CC658
/* 800CC5D8  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC5DC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC5E0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 800CC5E4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC5E8  38 80 00 01 */	li r4, 1
/* 800CC5EC  7F C5 F3 78 */	mr r5, r30
/* 800CC5F0  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC5F4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC5F8  7D 89 03 A6 */	mtctr r12
/* 800CC5FC  4E 80 04 21 */	bctrl 
/* 800CC600  80 7D 06 58 */	lwz r3, 0x658(r29)
/* 800CC604  80 63 00 04 */	lwz r3, 4(r3)
/* 800CC608  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC60C  80 63 00 00 */	lwz r3, 0(r3)
/* 800CC610  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC614  38 80 00 01 */	li r4, 1
/* 800CC618  7F C5 F3 78 */	mr r5, r30
/* 800CC61C  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC620  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC624  7D 89 03 A6 */	mtctr r12
/* 800CC628  4E 80 04 21 */	bctrl 
/* 800CC62C  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC630  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC634  80 63 00 14 */	lwz r3, 0x14(r3)
/* 800CC638  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC63C  38 80 00 01 */	li r4, 1
/* 800CC640  7F E5 FB 78 */	mr r5, r31
/* 800CC644  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC648  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC64C  7D 89 03 A6 */	mtctr r12
/* 800CC650  4E 80 04 21 */	bctrl 
/* 800CC654  48 00 01 70 */	b lbl_800CC7C4
lbl_800CC658:
/* 800CC658  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC65C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC660  80 63 00 44 */	lwz r3, 0x44(r3)
/* 800CC664  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC668  38 80 00 01 */	li r4, 1
/* 800CC66C  7F C5 F3 78 */	mr r5, r30
/* 800CC670  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC674  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC678  7D 89 03 A6 */	mtctr r12
/* 800CC67C  4E 80 04 21 */	bctrl 
/* 800CC680  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC684  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC688  80 63 00 24 */	lwz r3, 0x24(r3)
/* 800CC68C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC690  38 80 00 01 */	li r4, 1
/* 800CC694  7F C5 F3 78 */	mr r5, r30
/* 800CC698  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC69C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC6A0  7D 89 03 A6 */	mtctr r12
/* 800CC6A4  4E 80 04 21 */	bctrl 
/* 800CC6A8  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC6AC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC6B0  80 63 00 00 */	lwz r3, 0(r3)
/* 800CC6B4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC6B8  38 80 00 01 */	li r4, 1
/* 800CC6BC  7F C5 F3 78 */	mr r5, r30
/* 800CC6C0  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC6C4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC6C8  7D 89 03 A6 */	mtctr r12
/* 800CC6CC  4E 80 04 21 */	bctrl 
/* 800CC6D0  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC6D4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC6D8  80 63 00 04 */	lwz r3, 4(r3)
/* 800CC6DC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC6E0  38 80 00 01 */	li r4, 1
/* 800CC6E4  7F C5 F3 78 */	mr r5, r30
/* 800CC6E8  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC6EC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC6F0  7D 89 03 A6 */	mtctr r12
/* 800CC6F4  4E 80 04 21 */	bctrl 
/* 800CC6F8  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC6FC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC700  80 63 00 08 */	lwz r3, 8(r3)
/* 800CC704  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC708  38 80 00 01 */	li r4, 1
/* 800CC70C  7F C5 F3 78 */	mr r5, r30
/* 800CC710  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC714  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC718  7D 89 03 A6 */	mtctr r12
/* 800CC71C  4E 80 04 21 */	bctrl 
/* 800CC720  80 7D 06 58 */	lwz r3, 0x658(r29)
/* 800CC724  80 63 00 04 */	lwz r3, 4(r3)
/* 800CC728  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC72C  80 63 00 00 */	lwz r3, 0(r3)
/* 800CC730  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC734  38 80 00 01 */	li r4, 1
/* 800CC738  7F C5 F3 78 */	mr r5, r30
/* 800CC73C  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC740  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC744  7D 89 03 A6 */	mtctr r12
/* 800CC748  4E 80 04 21 */	bctrl 
/* 800CC74C  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC750  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC754  80 63 00 40 */	lwz r3, 0x40(r3)
/* 800CC758  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC75C  38 80 00 01 */	li r4, 1
/* 800CC760  7F E5 FB 78 */	mr r5, r31
/* 800CC764  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC768  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC76C  7D 89 03 A6 */	mtctr r12
/* 800CC770  4E 80 04 21 */	bctrl 
/* 800CC774  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC778  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC77C  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 800CC780  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC784  38 80 00 01 */	li r4, 1
/* 800CC788  7F E5 FB 78 */	mr r5, r31
/* 800CC78C  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC790  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC794  7D 89 03 A6 */	mtctr r12
/* 800CC798  4E 80 04 21 */	bctrl 
/* 800CC79C  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800CC7A0  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CC7A4  80 63 00 38 */	lwz r3, 0x38(r3)
/* 800CC7A8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800CC7AC  38 80 00 01 */	li r4, 1
/* 800CC7B0  7F E5 FB 78 */	mr r5, r31
/* 800CC7B4  81 83 00 00 */	lwz r12, 0(r3)
/* 800CC7B8  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800CC7BC  7D 89 03 A6 */	mtctr r12
/* 800CC7C0  4E 80 04 21 */	bctrl 
lbl_800CC7C4:
/* 800CC7C4  39 61 00 20 */	addi r11, r1, 0x20
/* 800CC7C8  48 29 5A 61 */	bl _restgpr_29
/* 800CC7CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CC7D0  7C 08 03 A6 */	mtlr r0
/* 800CC7D4  38 21 00 20 */	addi r1, r1, 0x20
/* 800CC7D8  4E 80 00 20 */	blr 
