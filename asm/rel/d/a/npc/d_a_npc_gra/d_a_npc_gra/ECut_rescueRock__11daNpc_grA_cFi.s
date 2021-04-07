lbl_809C5088:
/* 809C5088  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809C508C  7C 08 02 A6 */	mflr r0
/* 809C5090  90 01 00 34 */	stw r0, 0x34(r1)
/* 809C5094  39 61 00 30 */	addi r11, r1, 0x30
/* 809C5098  4B 99 D1 39 */	bl _savegpr_26
/* 809C509C  7C 7D 1B 78 */	mr r29, r3
/* 809C50A0  7C 9A 23 78 */	mr r26, r4
/* 809C50A4  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C50A8  3B E3 9D 98 */	addi r31, r3, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C50AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C50B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C50B4  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 809C50B8  3B C0 00 00 */	li r30, 0
/* 809C50BC  3B 60 FF FF */	li r27, -1
/* 809C50C0  7F 83 E3 78 */	mr r3, r28
/* 809C50C4  3C A0 80 9D */	lis r5, d_a_npc_gra__stringBase0@ha /* 0x809CA4B8@ha */
/* 809C50C8  38 A5 A4 B8 */	addi r5, r5, d_a_npc_gra__stringBase0@l /* 0x809CA4B8@l */
/* 809C50CC  38 A5 01 46 */	addi r5, r5, 0x146
/* 809C50D0  38 C0 00 03 */	li r6, 3
/* 809C50D4  4B 68 30 19 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809C50D8  28 03 00 00 */	cmplwi r3, 0
/* 809C50DC  41 82 00 08 */	beq lbl_809C50E4
/* 809C50E0  83 63 00 00 */	lwz r27, 0(r3)
lbl_809C50E4:
/* 809C50E4  7F 83 E3 78 */	mr r3, r28
/* 809C50E8  7F 44 D3 78 */	mr r4, r26
/* 809C50EC  4B 68 2C 61 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809C50F0  2C 03 00 00 */	cmpwi r3, 0
/* 809C50F4  41 82 00 AC */	beq lbl_809C51A0
/* 809C50F8  2C 1B 00 0A */	cmpwi r27, 0xa
/* 809C50FC  41 82 00 A4 */	beq lbl_809C51A0
/* 809C5100  40 80 00 10 */	bge lbl_809C5110
/* 809C5104  2C 1B 00 00 */	cmpwi r27, 0
/* 809C5108  41 82 00 14 */	beq lbl_809C511C
/* 809C510C  48 00 00 94 */	b lbl_809C51A0
lbl_809C5110:
/* 809C5110  2C 1B 00 14 */	cmpwi r27, 0x14
/* 809C5114  41 82 00 74 */	beq lbl_809C5188
/* 809C5118  48 00 00 88 */	b lbl_809C51A0
lbl_809C511C:
/* 809C511C  7F A3 EB 78 */	mr r3, r29
/* 809C5120  38 80 00 17 */	li r4, 0x17
/* 809C5124  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 809C5128  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809C512C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C5130  7D 89 03 A6 */	mtctr r12
/* 809C5134  4E 80 04 21 */	bctrl 
/* 809C5138  7F A3 EB 78 */	mr r3, r29
/* 809C513C  38 80 00 13 */	li r4, 0x13
/* 809C5140  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 809C5144  38 A0 00 00 */	li r5, 0
/* 809C5148  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809C514C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C5150  7D 89 03 A6 */	mtctr r12
/* 809C5154  4E 80 04 21 */	bctrl 
/* 809C5158  7F A3 EB 78 */	mr r3, r29
/* 809C515C  38 80 00 00 */	li r4, 0
/* 809C5160  4B FF DF 11 */	bl setLookMode__11daNpc_grA_cFi
/* 809C5164  C0 1F 06 70 */	lfs f0, 0x670(r31)
/* 809C5168  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 809C516C  C0 1F 06 D8 */	lfs f0, 0x6d8(r31)
/* 809C5170  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 809C5174  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 809C5178  D0 1D 14 D4 */	stfs f0, 0x14d4(r29)
/* 809C517C  38 00 00 00 */	li r0, 0
/* 809C5180  98 1D 14 86 */	stb r0, 0x1486(r29)
/* 809C5184  48 00 00 1C */	b lbl_809C51A0
lbl_809C5188:
/* 809C5188  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 809C518C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 809C5190  90 1D 05 FC */	stw r0, 0x5fc(r29)
/* 809C5194  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 809C5198  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 809C519C  90 1D 05 FC */	stw r0, 0x5fc(r29)
lbl_809C51A0:
/* 809C51A0  2C 1B 00 0A */	cmpwi r27, 0xa
/* 809C51A4  41 82 00 B8 */	beq lbl_809C525C
/* 809C51A8  40 80 00 10 */	bge lbl_809C51B8
/* 809C51AC  2C 1B 00 00 */	cmpwi r27, 0
/* 809C51B0  41 82 00 14 */	beq lbl_809C51C4
/* 809C51B4  48 00 02 5C */	b lbl_809C5410
lbl_809C51B8:
/* 809C51B8  2C 1B 00 14 */	cmpwi r27, 0x14
/* 809C51BC  41 82 01 0C */	beq lbl_809C52C8
/* 809C51C0  48 00 02 50 */	b lbl_809C5410
lbl_809C51C4:
/* 809C51C4  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 809C51C8  C0 1F 06 C8 */	lfs f0, 0x6c8(r31)
/* 809C51CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C51D0  40 80 00 60 */	bge lbl_809C5230
/* 809C51D4  80 1D 14 D8 */	lwz r0, 0x14d8(r29)
/* 809C51D8  2C 00 00 19 */	cmpwi r0, 0x19
/* 809C51DC  41 82 00 4C */	beq lbl_809C5228
/* 809C51E0  7F A3 EB 78 */	mr r3, r29
/* 809C51E4  38 80 00 17 */	li r4, 0x17
/* 809C51E8  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C51EC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809C51F0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C51F4  7D 89 03 A6 */	mtctr r12
/* 809C51F8  4E 80 04 21 */	bctrl 
/* 809C51FC  7F A3 EB 78 */	mr r3, r29
/* 809C5200  38 80 00 14 */	li r4, 0x14
/* 809C5204  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C5208  38 A0 00 00 */	li r5, 0
/* 809C520C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809C5210  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C5214  7D 89 03 A6 */	mtctr r12
/* 809C5218  4E 80 04 21 */	bctrl 
/* 809C521C  C0 1F 06 DC */	lfs f0, 0x6dc(r31)
/* 809C5220  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 809C5224  48 00 01 F0 */	b lbl_809C5414
lbl_809C5228:
/* 809C5228  3B C0 00 01 */	li r30, 1
/* 809C522C  48 00 01 E8 */	b lbl_809C5414
lbl_809C5230:
/* 809C5230  38 7D 14 D4 */	addi r3, r29, 0x14d4
/* 809C5234  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 809C5238  C0 5F 06 E0 */	lfs f2, 0x6e0(r31)
/* 809C523C  4B 8A B5 05 */	bl cLib_chaseF__FPfff
/* 809C5240  C0 1D 14 D4 */	lfs f0, 0x14d4(r29)
/* 809C5244  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809C5248  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809C524C  38 00 00 1B */	li r0, 0x1b
/* 809C5250  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809C5254  B0 03 00 14 */	sth r0, 0x14(r3)
/* 809C5258  48 00 01 BC */	b lbl_809C5414
lbl_809C525C:
/* 809C525C  80 1D 14 D8 */	lwz r0, 0x14d8(r29)
/* 809C5260  2C 00 00 19 */	cmpwi r0, 0x19
/* 809C5264  40 82 00 5C */	bne lbl_809C52C0
/* 809C5268  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809C526C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809C5270  C0 1F 06 E4 */	lfs f0, 0x6e4(r31)
/* 809C5274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C5278  4C 41 13 82 */	cror 2, 1, 2
/* 809C527C  40 82 01 98 */	bne lbl_809C5414
/* 809C5280  7F A3 EB 78 */	mr r3, r29
/* 809C5284  38 80 00 17 */	li r4, 0x17
/* 809C5288  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C528C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809C5290  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C5294  7D 89 03 A6 */	mtctr r12
/* 809C5298  4E 80 04 21 */	bctrl 
/* 809C529C  7F A3 EB 78 */	mr r3, r29
/* 809C52A0  38 80 00 1C */	li r4, 0x1c
/* 809C52A4  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C52A8  38 A0 00 00 */	li r5, 0
/* 809C52AC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809C52B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C52B4  7D 89 03 A6 */	mtctr r12
/* 809C52B8  4E 80 04 21 */	bctrl 
/* 809C52BC  48 00 01 58 */	b lbl_809C5414
lbl_809C52C0:
/* 809C52C0  3B C0 00 01 */	li r30, 1
/* 809C52C4  48 00 01 50 */	b lbl_809C5414
lbl_809C52C8:
/* 809C52C8  80 7D 05 FC */	lwz r3, 0x5fc(r29)
/* 809C52CC  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 809C52D0  41 82 00 08 */	beq lbl_809C52D8
/* 809C52D4  3B C0 00 01 */	li r30, 1
lbl_809C52D8:
/* 809C52D8  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 809C52DC  41 82 01 38 */	beq lbl_809C5414
/* 809C52E0  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809C52E4  80 63 00 04 */	lwz r3, 4(r3)
/* 809C52E8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809C52EC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809C52F0  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 809C52F4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C52F8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C52FC  4B 98 11 B5 */	bl PSMTXCopy
/* 809C5300  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C5304  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C5308  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809C530C  D0 1D 15 80 */	stfs f0, 0x1580(r29)
/* 809C5310  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 809C5314  D0 1D 15 84 */	stfs f0, 0x1584(r29)
/* 809C5318  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 809C531C  D0 1D 15 88 */	stfs f0, 0x1588(r29)
/* 809C5320  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 809C5324  D0 1D 15 84 */	stfs f0, 0x1584(r29)
/* 809C5328  A8 1D 08 F0 */	lha r0, 0x8f0(r29)
/* 809C532C  B0 1D 15 8C */	sth r0, 0x158c(r29)
/* 809C5330  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 809C5334  B0 1D 15 8E */	sth r0, 0x158e(r29)
/* 809C5338  A8 1D 08 F4 */	lha r0, 0x8f4(r29)
/* 809C533C  B0 1D 15 90 */	sth r0, 0x1590(r29)
/* 809C5340  38 00 00 01 */	li r0, 1
/* 809C5344  98 1D 15 7C */	stb r0, 0x157c(r29)
/* 809C5348  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809C534C  80 63 00 04 */	lwz r3, 4(r3)
/* 809C5350  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809C5354  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809C5358  38 63 04 50 */	addi r3, r3, 0x450
/* 809C535C  7F 84 E3 78 */	mr r4, r28
/* 809C5360  4B 98 11 51 */	bl PSMTXCopy
/* 809C5364  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809C5368  D0 1D 15 DC */	stfs f0, 0x15dc(r29)
/* 809C536C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 809C5370  D0 1D 15 E0 */	stfs f0, 0x15e0(r29)
/* 809C5374  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 809C5378  D0 1D 15 E4 */	stfs f0, 0x15e4(r29)
/* 809C537C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 809C5380  D0 1D 15 E0 */	stfs f0, 0x15e0(r29)
/* 809C5384  A8 1D 08 F0 */	lha r0, 0x8f0(r29)
/* 809C5388  B0 1D 15 E8 */	sth r0, 0x15e8(r29)
/* 809C538C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 809C5390  B0 1D 15 EA */	sth r0, 0x15ea(r29)
/* 809C5394  A8 1D 08 F4 */	lha r0, 0x8f4(r29)
/* 809C5398  B0 1D 15 EC */	sth r0, 0x15ec(r29)
/* 809C539C  38 00 00 01 */	li r0, 1
/* 809C53A0  98 1D 15 D8 */	stb r0, 0x15d8(r29)
/* 809C53A4  7F A3 EB 78 */	mr r3, r29
/* 809C53A8  38 80 00 17 */	li r4, 0x17
/* 809C53AC  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C53B0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809C53B4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C53B8  7D 89 03 A6 */	mtctr r12
/* 809C53BC  4E 80 04 21 */	bctrl 
/* 809C53C0  7F A3 EB 78 */	mr r3, r29
/* 809C53C4  38 80 00 00 */	li r4, 0
/* 809C53C8  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C53CC  38 A0 00 00 */	li r5, 0
/* 809C53D0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809C53D4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C53D8  7D 89 03 A6 */	mtctr r12
/* 809C53DC  4E 80 04 21 */	bctrl 
/* 809C53E0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006004B@ha */
/* 809C53E4  38 03 00 4B */	addi r0, r3, 0x004B /* 0x0006004B@l */
/* 809C53E8  90 01 00 08 */	stw r0, 8(r1)
/* 809C53EC  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 809C53F0  38 81 00 08 */	addi r4, r1, 8
/* 809C53F4  38 A0 00 00 */	li r5, 0
/* 809C53F8  38 C0 FF FF */	li r6, -1
/* 809C53FC  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 809C5400  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 809C5404  7D 89 03 A6 */	mtctr r12
/* 809C5408  4E 80 04 21 */	bctrl 
/* 809C540C  48 00 00 08 */	b lbl_809C5414
lbl_809C5410:
/* 809C5410  3B C0 00 01 */	li r30, 1
lbl_809C5414:
/* 809C5414  7F C3 F3 78 */	mr r3, r30
/* 809C5418  39 61 00 30 */	addi r11, r1, 0x30
/* 809C541C  4B 99 CE 01 */	bl _restgpr_26
/* 809C5420  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809C5424  7C 08 03 A6 */	mtlr r0
/* 809C5428  38 21 00 30 */	addi r1, r1, 0x30
/* 809C542C  4E 80 00 20 */	blr 
