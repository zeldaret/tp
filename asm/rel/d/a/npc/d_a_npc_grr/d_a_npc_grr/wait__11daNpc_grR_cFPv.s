lbl_809E27CC:
/* 809E27CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E27D0  7C 08 02 A6 */	mflr r0
/* 809E27D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E27D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E27DC  93 C1 00 08 */	stw r30, 8(r1)
/* 809E27E0  7C 7F 1B 78 */	mr r31, r3
/* 809E27E4  A0 03 0E 0E */	lhz r0, 0xe0e(r3)
/* 809E27E8  2C 00 00 02 */	cmpwi r0, 2
/* 809E27EC  41 82 00 A4 */	beq lbl_809E2890
/* 809E27F0  40 80 01 AC */	bge lbl_809E299C
/* 809E27F4  2C 00 00 00 */	cmpwi r0, 0
/* 809E27F8  41 82 00 0C */	beq lbl_809E2804
/* 809E27FC  48 00 01 A0 */	b lbl_809E299C
/* 809E2800  48 00 01 9C */	b lbl_809E299C
lbl_809E2804:
/* 809E2804  88 1F 0E 18 */	lbz r0, 0xe18(r31)
/* 809E2808  28 00 00 00 */	cmplwi r0, 0
/* 809E280C  40 82 00 60 */	bne lbl_809E286C
/* 809E2810  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 809E2814  2C 00 00 05 */	cmpwi r0, 5
/* 809E2818  41 82 00 54 */	beq lbl_809E286C
/* 809E281C  2C 00 00 03 */	cmpwi r0, 3
/* 809E2820  41 82 00 4C */	beq lbl_809E286C
/* 809E2824  2C 00 00 04 */	cmpwi r0, 4
/* 809E2828  41 82 00 44 */	beq lbl_809E286C
/* 809E282C  38 80 00 06 */	li r4, 6
/* 809E2830  3C A0 80 9E */	lis r5, lit_4718@ha /* 0x809E3978@ha */
/* 809E2834  C0 25 39 78 */	lfs f1, lit_4718@l(r5)  /* 0x809E3978@l */
/* 809E2838  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809E283C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809E2840  7D 89 03 A6 */	mtctr r12
/* 809E2844  4E 80 04 21 */	bctrl 
/* 809E2848  7F E3 FB 78 */	mr r3, r31
/* 809E284C  38 80 00 05 */	li r4, 5
/* 809E2850  3C A0 80 9E */	lis r5, lit_4718@ha /* 0x809E3978@ha */
/* 809E2854  C0 25 39 78 */	lfs f1, lit_4718@l(r5)  /* 0x809E3978@l */
/* 809E2858  38 A0 00 00 */	li r5, 0
/* 809E285C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E2860  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809E2864  7D 89 03 A6 */	mtctr r12
/* 809E2868  4E 80 04 21 */	bctrl 
lbl_809E286C:
/* 809E286C  7F E3 FB 78 */	mr r3, r31
/* 809E2870  38 80 00 00 */	li r4, 0
/* 809E2874  4B FF FC 0D */	bl setLookMode__11daNpc_grR_cFi
/* 809E2878  38 00 00 00 */	li r0, 0
/* 809E287C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809E2880  38 00 00 01 */	li r0, 1
/* 809E2884  98 1F 09 EA */	stb r0, 0x9ea(r31)
/* 809E2888  38 00 00 02 */	li r0, 2
/* 809E288C  B0 1F 0E 0E */	sth r0, 0xe0e(r31)
lbl_809E2890:
/* 809E2890  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809E2894  28 00 00 00 */	cmplwi r0, 0
/* 809E2898  40 82 01 04 */	bne lbl_809E299C
/* 809E289C  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809E28A0  4B 76 DE 4D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809E28A4  30 03 FF FF */	addic r0, r3, -1
/* 809E28A8  7C 00 19 10 */	subfe r0, r0, r3
/* 809E28AC  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 809E28B0  7F E3 FB 78 */	mr r3, r31
/* 809E28B4  7F C4 F3 78 */	mr r4, r30
/* 809E28B8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 809E28BC  4B 77 21 25 */	bl chkFindPlayer2__8daNpcF_cFis
/* 809E28C0  2C 03 00 00 */	cmpwi r3, 0
/* 809E28C4  41 82 00 2C */	beq lbl_809E28F0
/* 809E28C8  2C 1E 00 00 */	cmpwi r30, 0
/* 809E28CC  40 82 00 3C */	bne lbl_809E2908
/* 809E28D0  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809E28D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E28D8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E28DC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809E28E0  4B 76 DD DD */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809E28E4  38 00 00 00 */	li r0, 0
/* 809E28E8  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809E28EC  48 00 00 1C */	b lbl_809E2908
lbl_809E28F0:
/* 809E28F0  2C 1E 00 00 */	cmpwi r30, 0
/* 809E28F4  41 82 00 14 */	beq lbl_809E2908
/* 809E28F8  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809E28FC  4B 76 DD E5 */	bl remove__18daNpcF_ActorMngr_cFv
/* 809E2900  38 00 00 00 */	li r0, 0
/* 809E2904  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809E2908:
/* 809E2908  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809E290C  4B 76 DD E1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809E2910  28 03 00 00 */	cmplwi r3, 0
/* 809E2914  40 82 00 88 */	bne lbl_809E299C
/* 809E2918  7F E3 FB 78 */	mr r3, r31
/* 809E291C  38 80 00 00 */	li r4, 0
/* 809E2920  4B FF FB 61 */	bl setLookMode__11daNpc_grR_cFi
/* 809E2924  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809E2928  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809E292C  7C 04 00 00 */	cmpw r4, r0
/* 809E2930  41 82 00 6C */	beq lbl_809E299C
/* 809E2934  7F E3 FB 78 */	mr r3, r31
/* 809E2938  38 A0 00 07 */	li r5, 7
/* 809E293C  38 C0 00 0A */	li r6, 0xa
/* 809E2940  38 E0 00 0F */	li r7, 0xf
/* 809E2944  4B 77 17 61 */	bl step__8daNpcF_cFsiii
/* 809E2948  2C 03 00 00 */	cmpwi r3, 0
/* 809E294C  41 82 00 50 */	beq lbl_809E299C
/* 809E2950  7F E3 FB 78 */	mr r3, r31
/* 809E2954  38 80 00 06 */	li r4, 6
/* 809E2958  3C A0 80 9E */	lis r5, lit_4718@ha /* 0x809E3978@ha */
/* 809E295C  C0 25 39 78 */	lfs f1, lit_4718@l(r5)  /* 0x809E3978@l */
/* 809E2960  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E2964  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809E2968  7D 89 03 A6 */	mtctr r12
/* 809E296C  4E 80 04 21 */	bctrl 
/* 809E2970  7F E3 FB 78 */	mr r3, r31
/* 809E2974  38 80 00 05 */	li r4, 5
/* 809E2978  3C A0 80 9E */	lis r5, lit_4718@ha /* 0x809E3978@ha */
/* 809E297C  C0 25 39 78 */	lfs f1, lit_4718@l(r5)  /* 0x809E3978@l */
/* 809E2980  38 A0 00 00 */	li r5, 0
/* 809E2984  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E2988  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809E298C  7D 89 03 A6 */	mtctr r12
/* 809E2990  4E 80 04 21 */	bctrl 
/* 809E2994  38 00 00 00 */	li r0, 0
/* 809E2998  B0 1F 0E 0E */	sth r0, 0xe0e(r31)
lbl_809E299C:
/* 809E299C  38 60 00 01 */	li r3, 1
/* 809E29A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E29A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809E29A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E29AC  7C 08 03 A6 */	mtlr r0
/* 809E29B0  38 21 00 10 */	addi r1, r1, 0x10
/* 809E29B4  4E 80 00 20 */	blr 
