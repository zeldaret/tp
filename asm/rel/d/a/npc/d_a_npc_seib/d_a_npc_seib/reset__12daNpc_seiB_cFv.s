lbl_80AC566C:
/* 80AC566C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC5670  7C 08 02 A6 */	mflr r0
/* 80AC5674  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC5678  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC567C  4B 89 CB 60 */	b _savegpr_29
/* 80AC5680  7C 7F 1B 78 */	mr r31, r3
/* 80AC5684  3C 60 80 AC */	lis r3, m__18daNpc_seiB_Param_c@ha
/* 80AC5688  3B C3 70 24 */	addi r30, r3, m__18daNpc_seiB_Param_c@l
/* 80AC568C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AC5690  38 80 00 00 */	li r4, 0
/* 80AC5694  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AC5698  7C A3 00 50 */	subf r5, r3, r0
/* 80AC569C  4B 53 DD BC */	b memset
/* 80AC56A0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC56A4  4B 68 01 F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC56A8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC56AC  4B 68 01 EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC56B0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AC56B4  4B 68 00 20 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AC56B8  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AC56BC  4B 68 00 18 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AC56C0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AC56C4  4B 68 15 D4 */	b initialize__15daNpcT_JntAnm_cFv
/* 80AC56C8  38 A0 00 00 */	li r5, 0
/* 80AC56CC  38 60 00 00 */	li r3, 0
/* 80AC56D0  7C A4 2B 78 */	mr r4, r5
/* 80AC56D4  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80AC56D8  38 00 00 02 */	li r0, 2
/* 80AC56DC  7C 09 03 A6 */	mtctr r0
lbl_80AC56E0:
/* 80AC56E0  7C DF 22 14 */	add r6, r31, r4
/* 80AC56E4  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AC56E8  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AC56EC  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AC56F0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AC56F4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AC56F8  38 63 00 04 */	addi r3, r3, 4
/* 80AC56FC  38 84 00 06 */	addi r4, r4, 6
/* 80AC5700  42 00 FF E0 */	bdnz lbl_80AC56E0
/* 80AC5704  38 00 00 00 */	li r0, 0
/* 80AC5708  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AC570C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AC5710  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AC5714  38 00 FF FF */	li r0, -1
/* 80AC5718  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AC571C  38 00 00 01 */	li r0, 1
/* 80AC5720  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AC5724  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80AC5728  4B 7A 22 2C */	b cM_rndF__Ff
/* 80AC572C  FC 00 08 1E */	fctiwz f0, f1
/* 80AC5730  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AC5734  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AC5738  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AC573C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80AC5740  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AC5744  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AC5748  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80AC574C  38 80 00 00 */	li r4, 0
/* 80AC5750  38 1F 0E 64 */	addi r0, r31, 0xe64
/* 80AC5754  7C A3 00 50 */	subf r5, r3, r0
/* 80AC5758  4B 53 DD 00 */	b memset
/* 80AC575C  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80AC5760  28 03 00 00 */	cmplwi r3, 0
/* 80AC5764  41 82 00 08 */	beq lbl_80AC576C
/* 80AC5768  4B 67 FF FC */	b initialize__15daNpcT_MatAnm_cFv
lbl_80AC576C:
/* 80AC576C  7F E3 FB 78 */	mr r3, r31
/* 80AC5770  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AC5774  4B 68 52 A4 */	b setAngle__8daNpcT_cFs
/* 80AC5778  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC577C  2C 00 00 00 */	cmpwi r0, 0
/* 80AC5780  41 82 00 24 */	beq lbl_80AC57A4
/* 80AC5784  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80AC5788  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC578C  4B 68 01 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC5790  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80AC5794  38 00 00 00 */	li r0, 0
/* 80AC5798  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC579C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80AC57A0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AC57A4:
/* 80AC57A4  38 00 00 00 */	li r0, 0
/* 80AC57A8  90 1F 0E 60 */	stw r0, 0xe60(r31)
/* 80AC57AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC57B0  4B 89 CA 78 */	b _restgpr_29
/* 80AC57B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC57B8  7C 08 03 A6 */	mtlr r0
/* 80AC57BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC57C0  4E 80 00 20 */	blr 
