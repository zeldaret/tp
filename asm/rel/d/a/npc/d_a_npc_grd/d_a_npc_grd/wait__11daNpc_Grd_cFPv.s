lbl_809D2768:
/* 809D2768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D276C  7C 08 02 A6 */	mflr r0
/* 809D2770  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D2774  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D2778  93 C1 00 08 */	stw r30, 8(r1)
/* 809D277C  7C 7F 1B 78 */	mr r31, r3
/* 809D2780  A0 03 0E 16 */	lhz r0, 0xe16(r3)
/* 809D2784  2C 00 00 02 */	cmpwi r0, 2
/* 809D2788  41 82 00 74 */	beq lbl_809D27FC
/* 809D278C  40 80 01 C8 */	bge lbl_809D2954
/* 809D2790  2C 00 00 00 */	cmpwi r0, 0
/* 809D2794  41 82 00 0C */	beq lbl_809D27A0
/* 809D2798  48 00 01 BC */	b lbl_809D2954
/* 809D279C  48 00 01 B8 */	b lbl_809D2954
lbl_809D27A0:
/* 809D27A0  38 80 00 03 */	li r4, 3
/* 809D27A4  3C A0 80 9D */	lis r5, lit_4710@ha
/* 809D27A8  C0 25 3A 94 */	lfs f1, lit_4710@l(r5)
/* 809D27AC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809D27B0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809D27B4  7D 89 03 A6 */	mtctr r12
/* 809D27B8  4E 80 04 21 */	bctrl 
/* 809D27BC  7F E3 FB 78 */	mr r3, r31
/* 809D27C0  38 80 00 00 */	li r4, 0
/* 809D27C4  3C A0 80 9D */	lis r5, lit_4710@ha
/* 809D27C8  C0 25 3A 94 */	lfs f1, lit_4710@l(r5)
/* 809D27CC  38 A0 00 00 */	li r5, 0
/* 809D27D0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809D27D4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809D27D8  7D 89 03 A6 */	mtctr r12
/* 809D27DC  4E 80 04 21 */	bctrl 
/* 809D27E0  7F E3 FB 78 */	mr r3, r31
/* 809D27E4  38 80 00 00 */	li r4, 0
/* 809D27E8  4B FF FC 89 */	bl setLookMode__11daNpc_Grd_cFi
/* 809D27EC  38 00 00 00 */	li r0, 0
/* 809D27F0  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809D27F4  38 00 00 02 */	li r0, 2
/* 809D27F8  B0 1F 0E 16 */	sth r0, 0xe16(r31)
lbl_809D27FC:
/* 809D27FC  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809D2800  28 00 00 00 */	cmplwi r0, 0
/* 809D2804  40 82 01 50 */	bne lbl_809D2954
/* 809D2808  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809D280C  4B 77 DE E0 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809D2810  30 03 FF FF */	addic r0, r3, -1
/* 809D2814  7C 00 19 10 */	subfe r0, r0, r3
/* 809D2818  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 809D281C  7F E3 FB 78 */	mr r3, r31
/* 809D2820  7F C4 F3 78 */	mr r4, r30
/* 809D2824  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 809D2828  4B 78 21 B8 */	b chkFindPlayer2__8daNpcF_cFis
/* 809D282C  2C 03 00 00 */	cmpwi r3, 0
/* 809D2830  41 82 00 2C */	beq lbl_809D285C
/* 809D2834  2C 1E 00 00 */	cmpwi r30, 0
/* 809D2838  40 82 00 3C */	bne lbl_809D2874
/* 809D283C  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809D2840  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809D2844  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809D2848  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809D284C  4B 77 DE 70 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809D2850  38 00 00 00 */	li r0, 0
/* 809D2854  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809D2858  48 00 00 1C */	b lbl_809D2874
lbl_809D285C:
/* 809D285C  2C 1E 00 00 */	cmpwi r30, 0
/* 809D2860  41 82 00 14 */	beq lbl_809D2874
/* 809D2864  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809D2868  4B 77 DE 78 */	b remove__18daNpcF_ActorMngr_cFv
/* 809D286C  38 00 00 00 */	li r0, 0
/* 809D2870  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809D2874:
/* 809D2874  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809D2878  4B 77 DE 74 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809D287C  28 03 00 00 */	cmplwi r3, 0
/* 809D2880  41 82 00 14 */	beq lbl_809D2894
/* 809D2884  7F E3 FB 78 */	mr r3, r31
/* 809D2888  38 80 00 02 */	li r4, 2
/* 809D288C  4B FF FB E5 */	bl setLookMode__11daNpc_Grd_cFi
/* 809D2890  48 00 00 44 */	b lbl_809D28D4
lbl_809D2894:
/* 809D2894  7F E3 FB 78 */	mr r3, r31
/* 809D2898  38 80 00 00 */	li r4, 0
/* 809D289C  4B FF FB D5 */	bl setLookMode__11daNpc_Grd_cFi
/* 809D28A0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809D28A4  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809D28A8  7C 04 00 00 */	cmpw r4, r0
/* 809D28AC  41 82 00 28 */	beq lbl_809D28D4
/* 809D28B0  7F E3 FB 78 */	mr r3, r31
/* 809D28B4  38 A0 00 03 */	li r5, 3
/* 809D28B8  38 C0 00 05 */	li r6, 5
/* 809D28BC  38 E0 00 0F */	li r7, 0xf
/* 809D28C0  4B 78 17 E4 */	b step__8daNpcF_cFsiii
/* 809D28C4  2C 03 00 00 */	cmpwi r3, 0
/* 809D28C8  41 82 00 0C */	beq lbl_809D28D4
/* 809D28CC  38 00 00 00 */	li r0, 0
/* 809D28D0  B0 1F 0E 16 */	sth r0, 0xe16(r31)
lbl_809D28D4:
/* 809D28D4  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 809D28D8  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809D28DC  7C 03 00 00 */	cmpw r3, r0
/* 809D28E0  40 82 00 6C */	bne lbl_809D294C
/* 809D28E4  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809D28E8  4B 77 DE 04 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809D28EC  30 03 FF FF */	addic r0, r3, -1
/* 809D28F0  7C 00 19 10 */	subfe r0, r0, r3
/* 809D28F4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 809D28F8  7F E3 FB 78 */	mr r3, r31
/* 809D28FC  3C A0 80 15 */	lis r5, srchAttnActor1__8daNpcF_cFPvPv@ha
/* 809D2900  38 A5 26 54 */	addi r5, r5, srchAttnActor1__8daNpcF_cFPvPv@l
/* 809D2904  3C C0 80 9D */	lis r6, m__17daNpc_Grd_Param_c@ha
/* 809D2908  38 C6 3A 04 */	addi r6, r6, m__17daNpc_Grd_Param_c@l
/* 809D290C  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 809D2910  C0 46 00 58 */	lfs f2, 0x58(r6)
/* 809D2914  C0 66 00 5C */	lfs f3, 0x5c(r6)
/* 809D2918  C0 86 00 50 */	lfs f4, 0x50(r6)
/* 809D291C  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 809D2920  38 E0 00 78 */	li r7, 0x78
/* 809D2924  39 00 00 01 */	li r8, 1
/* 809D2928  4B 78 1A 44 */	b getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii
/* 809D292C  7C 64 1B 79 */	or. r4, r3, r3
/* 809D2930  41 82 00 24 */	beq lbl_809D2954
/* 809D2934  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 809D2938  4B 77 DD 84 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809D293C  7F E3 FB 78 */	mr r3, r31
/* 809D2940  38 80 00 04 */	li r4, 4
/* 809D2944  4B FF FB 2D */	bl setLookMode__11daNpc_Grd_cFi
/* 809D2948  48 00 00 0C */	b lbl_809D2954
lbl_809D294C:
/* 809D294C  38 00 00 00 */	li r0, 0
/* 809D2950  90 1F 09 38 */	stw r0, 0x938(r31)
lbl_809D2954:
/* 809D2954  38 60 00 01 */	li r3, 1
/* 809D2958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D295C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D2960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D2964  7C 08 03 A6 */	mtlr r0
/* 809D2968  38 21 00 10 */	addi r1, r1, 0x10
/* 809D296C  4E 80 00 20 */	blr 
