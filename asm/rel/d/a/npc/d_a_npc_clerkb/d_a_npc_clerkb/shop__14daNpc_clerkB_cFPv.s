lbl_80998520:
/* 80998520  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80998524  7C 08 02 A6 */	mflr r0
/* 80998528  90 01 00 54 */	stw r0, 0x54(r1)
/* 8099852C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80998530  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80998534  7C 7E 1B 78 */	mr r30, r3
/* 80998538  3C 80 80 9A */	lis r4, m__20daNpc_clerkB_Param_c@ha
/* 8099853C  3B E4 99 78 */	addi r31, r4, m__20daNpc_clerkB_Param_c@l
/* 80998540  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80998544  2C 00 00 02 */	cmpwi r0, 2
/* 80998548  41 82 00 D8 */	beq lbl_80998620
/* 8099854C  40 80 03 74 */	bge lbl_809988C0
/* 80998550  2C 00 00 00 */	cmpwi r0, 0
/* 80998554  40 80 00 0C */	bge lbl_80998560
/* 80998558  48 00 03 68 */	b lbl_809988C0
/* 8099855C  48 00 03 64 */	b lbl_809988C0
lbl_80998560:
/* 80998560  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80998564  2C 00 00 00 */	cmpwi r0, 0
/* 80998568  40 82 00 B8 */	bne lbl_80998620
/* 8099856C  80 1E 11 00 */	lwz r0, 0x1100(r30)
/* 80998570  2C 00 00 02 */	cmpwi r0, 2
/* 80998574  40 82 00 10 */	bne lbl_80998584
/* 80998578  38 80 00 01 */	li r4, 1
/* 8099857C  4B 80 1B 54 */	b shop_init__13dShopSystem_cFb
/* 80998580  48 00 00 48 */	b lbl_809985C8
lbl_80998584:
/* 80998584  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 80998588  4B 7F DD 84 */	b Save__16ShopCam_action_cFv
/* 8099858C  7F C3 F3 78 */	mr r3, r30
/* 80998590  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 80998594  38 A0 00 00 */	li r5, 0
/* 80998598  4B 7B 36 58 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8099859C  7F C3 F3 78 */	mr r3, r30
/* 809985A0  38 80 00 00 */	li r4, 0
/* 809985A4  4B 80 1B 2C */	b shop_init__13dShopSystem_cFb
/* 809985A8  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 809985AC  D0 1E 11 08 */	stfs f0, 0x1108(r30)
/* 809985B0  38 60 00 00 */	li r3, 0
/* 809985B4  98 7E 11 0D */	stb r3, 0x110d(r30)
/* 809985B8  38 00 00 01 */	li r0, 1
/* 809985BC  98 1E 11 0E */	stb r0, 0x110e(r30)
/* 809985C0  98 7E 11 0F */	stb r3, 0x110f(r30)
/* 809985C4  98 1E 0F 75 */	stb r0, 0xf75(r30)
lbl_809985C8:
/* 809985C8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809985CC  2C 00 00 00 */	cmpwi r0, 0
/* 809985D0  41 82 00 24 */	beq lbl_809985F4
/* 809985D4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809985D8  4B 7A D1 24 */	b remove__18daNpcT_ActorMngr_cFv
/* 809985DC  38 00 00 00 */	li r0, 0
/* 809985E0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809985E4  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 809985E8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809985EC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809985F0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809985F4:
/* 809985F4  38 60 00 00 */	li r3, 0
/* 809985F8  B0 7E 0C D4 */	sth r3, 0xcd4(r30)
/* 809985FC  B0 7E 0C D6 */	sth r3, 0xcd6(r30)
/* 80998600  38 00 00 01 */	li r0, 1
/* 80998604  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80998608  A8 1E 0D D8 */	lha r0, 0xdd8(r30)
/* 8099860C  2C 00 00 01 */	cmpwi r0, 1
/* 80998610  40 82 00 08 */	bne lbl_80998618
/* 80998614  B0 7E 0D D8 */	sth r3, 0xdd8(r30)
lbl_80998618:
/* 80998618  38 00 00 02 */	li r0, 2
/* 8099861C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80998620:
/* 80998620  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80998624  2C 00 00 00 */	cmpwi r0, 0
/* 80998628  40 82 01 C4 */	bne lbl_809987EC
/* 8099862C  7F C3 F3 78 */	mr r3, r30
/* 80998630  7F C4 F3 78 */	mr r4, r30
/* 80998634  38 BE 09 74 */	addi r5, r30, 0x974
/* 80998638  4B 80 1B 20 */	b shop_process__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c
/* 8099863C  90 7E 11 00 */	stw r3, 0x1100(r30)
/* 80998640  80 1E 11 00 */	lwz r0, 0x1100(r30)
/* 80998644  2C 00 00 00 */	cmpwi r0, 0
/* 80998648  41 82 00 38 */	beq lbl_80998680
/* 8099864C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80998650  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80998654  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80998658  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8099865C  4B 7A D0 84 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80998660  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80998664  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80998668  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8099866C  4B 6A 9D FC */	b reset__14dEvt_control_cFv
/* 80998670  38 00 00 03 */	li r0, 3
/* 80998674  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80998678  38 00 00 01 */	li r0, 1
/* 8099867C  98 1E 11 10 */	stb r0, 0x1110(r30)
lbl_80998680:
/* 80998680  88 1E 11 0D */	lbz r0, 0x110d(r30)
/* 80998684  28 00 00 00 */	cmplwi r0, 0
/* 80998688  41 82 00 44 */	beq lbl_809986CC
/* 8099868C  28 00 00 02 */	cmplwi r0, 2
/* 80998690  41 82 00 3C */	beq lbl_809986CC
/* 80998694  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80998698  2C 00 00 00 */	cmpwi r0, 0
/* 8099869C  41 82 00 24 */	beq lbl_809986C0
/* 809986A0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809986A4  4B 7A D0 58 */	b remove__18daNpcT_ActorMngr_cFv
/* 809986A8  38 00 00 00 */	li r0, 0
/* 809986AC  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809986B0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 809986B4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809986B8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809986BC  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809986C0:
/* 809986C0  38 00 00 00 */	li r0, 0
/* 809986C4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809986C8  48 00 01 24 */	b lbl_809987EC
lbl_809986CC:
/* 809986CC  28 00 00 02 */	cmplwi r0, 2
/* 809986D0  40 82 00 E4 */	bne lbl_809987B4
/* 809986D4  38 61 00 20 */	addi r3, r1, 0x20
/* 809986D8  38 9E 0E 48 */	addi r4, r30, 0xe48
/* 809986DC  88 BE 0F 6E */	lbz r5, 0xf6e(r30)
/* 809986E0  38 A5 FF FF */	addi r5, r5, -1
/* 809986E4  4B 7F E2 BC */	b getCurrentPos__15dShopItemCtrl_cFi
/* 809986E8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809986EC  D0 1E 0D 6C */	stfs f0, 0xd6c(r30)
/* 809986F0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809986F4  D0 1E 0D 70 */	stfs f0, 0xd70(r30)
/* 809986F8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 809986FC  D0 1E 0D 74 */	stfs f0, 0xd74(r30)
/* 80998700  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80998704  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80998708  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8099870C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80998710  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80998714  38 7E 0D 6C */	addi r3, r30, 0xd6c
/* 80998718  4B 67 46 4C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8099871C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80998720  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80998724  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80998728  4B 67 3D 0C */	b mDoMtx_YrotM__FPA4_fs
/* 8099872C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80998730  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80998734  38 81 00 2C */	addi r4, r1, 0x2c
/* 80998738  38 BE 0D 6C */	addi r5, r30, 0xd6c
/* 8099873C  4B 9A E6 30 */	b PSMTXMultVec
/* 80998740  80 7E 0B C8 */	lwz r3, 0xbc8(r30)
/* 80998744  38 1E 0D 6C */	addi r0, r30, 0xd6c
/* 80998748  7C 63 00 50 */	subf r3, r3, r0
/* 8099874C  30 03 FF FF */	addic r0, r3, -1
/* 80998750  7C 00 19 10 */	subfe r0, r0, r3
/* 80998754  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80998758  40 82 00 10 */	bne lbl_80998768
/* 8099875C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80998760  2C 00 00 03 */	cmpwi r0, 3
/* 80998764  41 82 00 30 */	beq lbl_80998794
lbl_80998768:
/* 80998768  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8099876C  4B 7A CF 90 */	b remove__18daNpcT_ActorMngr_cFv
/* 80998770  38 00 00 00 */	li r0, 0
/* 80998774  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80998778  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8099877C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80998780  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80998784  38 00 00 03 */	li r0, 3
/* 80998788  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 8099878C  38 00 00 01 */	li r0, 1
/* 80998790  48 00 00 08 */	b lbl_80998798
lbl_80998794:
/* 80998794  38 00 00 00 */	li r0, 0
lbl_80998798:
/* 80998798  2C 00 00 00 */	cmpwi r0, 0
/* 8099879C  41 82 00 0C */	beq lbl_809987A8
/* 809987A0  38 1E 0D 6C */	addi r0, r30, 0xd6c
/* 809987A4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
lbl_809987A8:
/* 809987A8  38 00 00 00 */	li r0, 0
/* 809987AC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809987B0  48 00 00 3C */	b lbl_809987EC
lbl_809987B4:
/* 809987B4  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809987B8  2C 00 00 04 */	cmpwi r0, 4
/* 809987BC  41 82 00 28 */	beq lbl_809987E4
/* 809987C0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809987C4  4B 7A CF 38 */	b remove__18daNpcT_ActorMngr_cFv
/* 809987C8  38 00 00 00 */	li r0, 0
/* 809987CC  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809987D0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 809987D4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809987D8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809987DC  38 00 00 04 */	li r0, 4
/* 809987E0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809987E4:
/* 809987E4  38 00 00 00 */	li r0, 0
/* 809987E8  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_809987EC:
/* 809987EC  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 809987F0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 809987F4  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 809987F8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809987FC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80998800  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80998804  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80998808  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 8099880C  4B 67 3B D0 */	b mDoMtx_YrotS__FPA4_fs
/* 80998810  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80998814  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80998818  38 81 00 38 */	addi r4, r1, 0x38
/* 8099881C  7C 85 23 78 */	mr r5, r4
/* 80998820  4B 9A E5 4C */	b PSMTXMultVec
/* 80998824  38 61 00 38 */	addi r3, r1, 0x38
/* 80998828  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8099882C  7C 65 1B 78 */	mr r5, r3
/* 80998830  4B 9A E8 60 */	b PSVECAdd
/* 80998834  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 80998838  38 81 00 38 */	addi r4, r1, 0x38
/* 8099883C  4B 7F E0 7C */	b setMasterCamCtrPos__16ShopCam_action_cFP4cXyz
/* 80998840  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80998844  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80998848  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 8099884C  38 04 40 00 */	addi r0, r4, 0x4000
/* 80998850  7C 04 07 34 */	extsh r4, r0
/* 80998854  4B 67 3B 88 */	b mDoMtx_YrotS__FPA4_fs
/* 80998858  C0 3E 11 08 */	lfs f1, 0x1108(r30)
/* 8099885C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80998860  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80998864  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80998868  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8099886C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80998870  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80998874  38 81 00 2C */	addi r4, r1, 0x2c
/* 80998878  7C 85 23 78 */	mr r5, r4
/* 8099887C  4B 9A E4 F0 */	b PSMTXMultVec
/* 80998880  38 61 00 14 */	addi r3, r1, 0x14
/* 80998884  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80998888  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8099888C  4B 8C E2 58 */	b __pl__4cXyzCFRC3Vec
/* 80998890  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80998894  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80998898  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8099889C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 809988A0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809988A4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809988A8  D0 41 00 08 */	stfs f2, 8(r1)
/* 809988AC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809988B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809988B4  7F C3 F3 78 */	mr r3, r30
/* 809988B8  38 81 00 08 */	addi r4, r1, 8
/* 809988BC  4B 7B 20 4C */	b setPos__8daNpcT_cF4cXyz
lbl_809988C0:
/* 809988C0  38 60 00 00 */	li r3, 0
/* 809988C4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 809988C8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 809988CC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809988D0  7C 08 03 A6 */	mtlr r0
/* 809988D4  38 21 00 50 */	addi r1, r1, 0x50
/* 809988D8  4E 80 00 20 */	blr 
