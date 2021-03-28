lbl_809646E0:
/* 809646E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809646E4  7C 08 02 A6 */	mflr r0
/* 809646E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 809646EC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 809646F0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 809646F4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 809646F8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 809646FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80964700  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80964704  7C 7E 1B 78 */	mr r30, r3
/* 80964708  3C 60 80 96 */	lis r3, m__18daNpc_Bans_Param_c@ha
/* 8096470C  3B E3 7E 20 */	addi r31, r3, m__18daNpc_Bans_Param_c@l
/* 80964710  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80964714  28 00 00 00 */	cmplwi r0, 0
/* 80964718  40 82 02 2C */	bne lbl_80964944
/* 8096471C  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80964720  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80964724  38 80 00 1F */	li r4, 0x1f
/* 80964728  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 8096472C  28 00 00 00 */	cmplwi r0, 0
/* 80964730  41 82 00 10 */	beq lbl_80964740
/* 80964734  38 60 00 00 */	li r3, 0
/* 80964738  38 80 00 00 */	li r4, 0
/* 8096473C  48 00 00 18 */	b lbl_80964754
lbl_80964740:
/* 80964740  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80964744  2C 00 00 00 */	cmpwi r0, 0
/* 80964748  41 82 00 0C */	beq lbl_80964754
/* 8096474C  38 60 00 00 */	li r3, 0
/* 80964750  38 80 00 00 */	li r4, 0
lbl_80964754:
/* 80964754  88 1E 12 00 */	lbz r0, 0x1200(r30)
/* 80964758  28 00 00 00 */	cmplwi r0, 0
/* 8096475C  41 82 00 CC */	beq lbl_80964828
/* 80964760  28 00 00 04 */	cmplwi r0, 4
/* 80964764  41 82 00 C4 */	beq lbl_80964828
/* 80964768  38 00 00 79 */	li r0, 0x79
/* 8096476C  90 1E 10 F0 */	stw r0, 0x10f0(r30)
/* 80964770  90 7E 10 EC */	stw r3, 0x10ec(r30)
/* 80964774  90 9E 10 DC */	stw r4, 0x10dc(r30)
/* 80964778  80 1E 11 60 */	lwz r0, 0x1160(r30)
/* 8096477C  60 00 00 04 */	ori r0, r0, 4
/* 80964780  90 1E 11 60 */	stw r0, 0x1160(r30)
/* 80964784  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80964788  D0 21 00 08 */	stfs f1, 8(r1)
/* 8096478C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80964790  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80964794  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80964798  C3 FE 0D EC */	lfs f31, 0xdec(r30)
/* 8096479C  C3 DE 0D F0 */	lfs f30, 0xdf0(r30)
/* 809647A0  88 1E 12 00 */	lbz r0, 0x1200(r30)
/* 809647A4  28 00 00 01 */	cmplwi r0, 1
/* 809647A8  40 82 00 14 */	bne lbl_809647BC
/* 809647AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 809647B0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809647B4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 809647B8  C3 DF 01 28 */	lfs f30, 0x128(r31)
lbl_809647BC:
/* 809647BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809647C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809647C4  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 809647C8  4B 6A 7C 14 */	b mDoMtx_YrotS__FPA4_fs
/* 809647CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809647D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809647D4  38 81 00 08 */	addi r4, r1, 8
/* 809647D8  7C 85 23 78 */	mr r5, r4
/* 809647DC  4B 9E 25 90 */	b PSMTXMultVec
/* 809647E0  38 61 00 08 */	addi r3, r1, 8
/* 809647E4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809647E8  7C 65 1B 78 */	mr r5, r3
/* 809647EC  4B 9E 28 A4 */	b PSVECAdd
/* 809647F0  38 7E 11 E8 */	addi r3, r30, 0x11e8
/* 809647F4  FC 20 F8 90 */	fmr f1, f31
/* 809647F8  4B 90 AA 00 */	b SetH__8cM3dGCylFf
/* 809647FC  38 7E 11 E8 */	addi r3, r30, 0x11e8
/* 80964800  FC 20 F0 90 */	fmr f1, f30
/* 80964804  4B 90 A9 FC */	b SetR__8cM3dGCylFf
/* 80964808  38 7E 11 E8 */	addi r3, r30, 0x11e8
/* 8096480C  38 81 00 08 */	addi r4, r1, 8
/* 80964810  4B 90 A9 CC */	b SetC__8cM3dGCylFRC4cXyz
/* 80964814  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80964818  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8096481C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80964820  38 9E 10 C4 */	addi r4, r30, 0x10c4
/* 80964824  4B 90 03 84 */	b Set__4cCcSFP8cCcD_Obj
lbl_80964828:
/* 80964828  88 1E 12 00 */	lbz r0, 0x1200(r30)
/* 8096482C  28 00 00 02 */	cmplwi r0, 2
/* 80964830  40 82 00 88 */	bne lbl_809648B8
/* 80964834  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80964838  D0 01 00 08 */	stfs f0, 8(r1)
/* 8096483C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80964840  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80964844  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80964848  C3 FE 0D EC */	lfs f31, 0xdec(r30)
/* 8096484C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80964850  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80964854  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80964858  4B 6A 7B 84 */	b mDoMtx_YrotS__FPA4_fs
/* 8096485C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80964860  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80964864  38 81 00 08 */	addi r4, r1, 8
/* 80964868  7C 85 23 78 */	mr r5, r4
/* 8096486C  4B 9E 25 00 */	b PSMTXMultVec
/* 80964870  38 61 00 08 */	addi r3, r1, 8
/* 80964874  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80964878  7C 65 1B 78 */	mr r5, r3
/* 8096487C  4B 9E 28 14 */	b PSVECAdd
/* 80964880  38 7E 10 AC */	addi r3, r30, 0x10ac
/* 80964884  FC 20 F8 90 */	fmr f1, f31
/* 80964888  4B 90 A9 70 */	b SetH__8cM3dGCylFf
/* 8096488C  38 7E 10 AC */	addi r3, r30, 0x10ac
/* 80964890  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80964894  4B 90 A9 6C */	b SetR__8cM3dGCylFf
/* 80964898  38 7E 10 AC */	addi r3, r30, 0x10ac
/* 8096489C  38 81 00 08 */	addi r4, r1, 8
/* 809648A0  4B 90 A9 3C */	b SetC__8cM3dGCylFRC4cXyz
/* 809648A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809648A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809648AC  38 63 23 3C */	addi r3, r3, 0x233c
/* 809648B0  38 9E 0F 88 */	addi r4, r30, 0xf88
/* 809648B4  4B 90 02 F4 */	b Set__4cCcSFP8cCcD_Obj
lbl_809648B8:
/* 809648B8  88 1E 12 00 */	lbz r0, 0x1200(r30)
/* 809648BC  28 00 00 03 */	cmplwi r0, 3
/* 809648C0  40 82 00 84 */	bne lbl_80964944
/* 809648C4  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 809648C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 809648CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809648D0  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 809648D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809648D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809648DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809648E0  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 809648E4  4B 6A 7A F8 */	b mDoMtx_YrotS__FPA4_fs
/* 809648E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809648EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809648F0  38 81 00 08 */	addi r4, r1, 8
/* 809648F4  7C 85 23 78 */	mr r5, r4
/* 809648F8  4B 9E 24 74 */	b PSMTXMultVec
/* 809648FC  38 61 00 08 */	addi r3, r1, 8
/* 80964900  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80964904  7C 65 1B 78 */	mr r5, r3
/* 80964908  4B 9E 27 88 */	b PSVECAdd
/* 8096490C  38 7E 10 AC */	addi r3, r30, 0x10ac
/* 80964910  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 80964914  4B 90 A8 E4 */	b SetH__8cM3dGCylFf
/* 80964918  38 7E 10 AC */	addi r3, r30, 0x10ac
/* 8096491C  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 80964920  4B 90 A8 E0 */	b SetR__8cM3dGCylFf
/* 80964924  38 7E 10 AC */	addi r3, r30, 0x10ac
/* 80964928  38 81 00 08 */	addi r4, r1, 8
/* 8096492C  4B 90 A8 B0 */	b SetC__8cM3dGCylFRC4cXyz
/* 80964930  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80964934  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80964938  38 63 23 3C */	addi r3, r3, 0x233c
/* 8096493C  38 9E 0F 88 */	addi r4, r30, 0xf88
/* 80964940  4B 90 02 68 */	b Set__4cCcSFP8cCcD_Obj
lbl_80964944:
/* 80964944  38 7E 10 C4 */	addi r3, r30, 0x10c4
/* 80964948  81 9E 11 00 */	lwz r12, 0x1100(r30)
/* 8096494C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80964950  7D 89 03 A6 */	mtctr r12
/* 80964954  4E 80 04 21 */	bctrl 
/* 80964958  38 7E 10 C4 */	addi r3, r30, 0x10c4
/* 8096495C  81 9E 11 00 */	lwz r12, 0x1100(r30)
/* 80964960  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80964964  7D 89 03 A6 */	mtctr r12
/* 80964968  4E 80 04 21 */	bctrl 
/* 8096496C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80964970  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80964974  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80964978  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8096497C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80964980  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80964984  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80964988  7C 08 03 A6 */	mtlr r0
/* 8096498C  38 21 00 40 */	addi r1, r1, 0x40
/* 80964990  4E 80 00 20 */	blr 
