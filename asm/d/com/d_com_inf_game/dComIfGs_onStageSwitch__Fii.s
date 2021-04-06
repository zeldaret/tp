lbl_8002D628:
/* 8002D628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002D62C  7C 08 02 A6 */	mflr r0
/* 8002D630  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002D634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002D638  93 C1 00 08 */	stw r30, 8(r1)
/* 8002D63C  7C 7E 1B 78 */	mr r30, r3
/* 8002D640  7C 9F 23 78 */	mr r31, r4
/* 8002D644  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D648  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D64C  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8002D650  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8002D654  7D 89 03 A6 */	mtctr r12
/* 8002D658  4E 80 04 21 */	bctrl 
/* 8002D65C  88 03 00 09 */	lbz r0, 9(r3)
/* 8002D660  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 8002D664  7C 1E 00 00 */	cmpw r30, r0
/* 8002D668  40 82 00 18 */	bne lbl_8002D680
/* 8002D66C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D670  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D674  7F E4 FB 78 */	mr r4, r31
/* 8002D678  38 A0 FF FF */	li r5, -1
/* 8002D67C  48 00 7B 85 */	bl onSwitch__10dSv_info_cFii
lbl_8002D680:
/* 8002D680  57 C4 28 34 */	slwi r4, r30, 5
/* 8002D684  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D688  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D68C  7C 60 22 14 */	add r3, r0, r4
/* 8002D690  38 63 01 F0 */	addi r3, r3, 0x1f0
/* 8002D694  7F E4 FB 78 */	mr r4, r31
/* 8002D698  48 00 71 79 */	bl onSwitch__12dSv_memBit_cFi
/* 8002D69C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002D6A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002D6A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002D6A8  7C 08 03 A6 */	mtlr r0
/* 8002D6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8002D6B0  4E 80 00 20 */	blr 
