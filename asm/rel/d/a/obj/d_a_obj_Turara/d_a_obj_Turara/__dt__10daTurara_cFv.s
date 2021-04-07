lbl_80B9E710:
/* 80B9E710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9E714  7C 08 02 A6 */	mflr r0
/* 80B9E718  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9E71C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9E720  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9E724  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B9E728  7C 9F 23 78 */	mr r31, r4
/* 80B9E72C  41 82 01 98 */	beq lbl_80B9E8C4
/* 80B9E730  3C 60 80 BA */	lis r3, __vt__10daTurara_c@ha /* 0x80B9EB20@ha */
/* 80B9E734  38 63 EB 20 */	addi r3, r3, __vt__10daTurara_c@l /* 0x80B9EB20@l */
/* 80B9E738  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80B9E73C  38 03 00 28 */	addi r0, r3, 0x28
/* 80B9E740  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80B9E744  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80B9E748  41 82 00 2C */	beq lbl_80B9E774
/* 80B9E74C  3C 60 80 BA */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B9EACC@ha */
/* 80B9E750  38 63 EA CC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B9EACC@l */
/* 80B9E754  90 7E 07 B8 */	stw r3, 0x7b8(r30)
/* 80B9E758  38 03 00 0C */	addi r0, r3, 0xc
/* 80B9E75C  90 1E 07 BC */	stw r0, 0x7bc(r30)
/* 80B9E760  38 03 00 18 */	addi r0, r3, 0x18
/* 80B9E764  90 1E 07 CC */	stw r0, 0x7cc(r30)
/* 80B9E768  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 80B9E76C  38 80 00 00 */	li r4, 0
/* 80B9E770  4B 4D 78 25 */	bl __dt__9dBgS_AcchFv
lbl_80B9E774:
/* 80B9E774  34 1E 07 68 */	addic. r0, r30, 0x768
/* 80B9E778  41 82 00 28 */	beq lbl_80B9E7A0
/* 80B9E77C  3C 60 80 BA */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B9EAC0@ha */
/* 80B9E780  38 03 EA C0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B9EAC0@l */
/* 80B9E784  90 1E 07 74 */	stw r0, 0x774(r30)
/* 80B9E788  38 7E 07 7C */	addi r3, r30, 0x77c
/* 80B9E78C  38 80 FF FF */	li r4, -1
/* 80B9E790  4B 6D 07 89 */	bl __dt__8cM3dGCirFv
/* 80B9E794  38 7E 07 68 */	addi r3, r30, 0x768
/* 80B9E798  38 80 00 00 */	li r4, 0
/* 80B9E79C  4B 6C 99 15 */	bl __dt__13cBgS_PolyInfoFv
lbl_80B9E7A0:
/* 80B9E7A0  34 1E 06 08 */	addic. r0, r30, 0x608
/* 80B9E7A4  41 82 00 84 */	beq lbl_80B9E828
/* 80B9E7A8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B9E7AC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B9E7B0  90 7E 06 44 */	stw r3, 0x644(r30)
/* 80B9E7B4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B9E7B8  90 1E 07 28 */	stw r0, 0x728(r30)
/* 80B9E7BC  38 03 00 84 */	addi r0, r3, 0x84
/* 80B9E7C0  90 1E 07 40 */	stw r0, 0x740(r30)
/* 80B9E7C4  34 1E 07 0C */	addic. r0, r30, 0x70c
/* 80B9E7C8  41 82 00 54 */	beq lbl_80B9E81C
/* 80B9E7CC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B9E7D0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B9E7D4  90 7E 07 28 */	stw r3, 0x728(r30)
/* 80B9E7D8  38 03 00 58 */	addi r0, r3, 0x58
/* 80B9E7DC  90 1E 07 40 */	stw r0, 0x740(r30)
/* 80B9E7E0  34 1E 07 2C */	addic. r0, r30, 0x72c
/* 80B9E7E4  41 82 00 10 */	beq lbl_80B9E7F4
/* 80B9E7E8  3C 60 80 BA */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B9EAF0@ha */
/* 80B9E7EC  38 03 EA F0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B9EAF0@l */
/* 80B9E7F0  90 1E 07 40 */	stw r0, 0x740(r30)
lbl_80B9E7F4:
/* 80B9E7F4  34 1E 07 0C */	addic. r0, r30, 0x70c
/* 80B9E7F8  41 82 00 24 */	beq lbl_80B9E81C
/* 80B9E7FC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B9E800  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B9E804  90 1E 07 28 */	stw r0, 0x728(r30)
/* 80B9E808  34 1E 07 0C */	addic. r0, r30, 0x70c
/* 80B9E80C  41 82 00 10 */	beq lbl_80B9E81C
/* 80B9E810  3C 60 80 BA */	lis r3, __vt__8cM3dGAab@ha /* 0x80B9EAFC@ha */
/* 80B9E814  38 03 EA FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B9EAFC@l */
/* 80B9E818  90 1E 07 24 */	stw r0, 0x724(r30)
lbl_80B9E81C:
/* 80B9E81C  38 7E 06 08 */	addi r3, r30, 0x608
/* 80B9E820  38 80 00 00 */	li r4, 0
/* 80B9E824  4B 4E 58 C1 */	bl __dt__12dCcD_GObjInfFv
lbl_80B9E828:
/* 80B9E828  34 1E 05 CC */	addic. r0, r30, 0x5cc
/* 80B9E82C  41 82 00 54 */	beq lbl_80B9E880
/* 80B9E830  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B9E834  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B9E838  90 7E 05 E4 */	stw r3, 0x5e4(r30)
/* 80B9E83C  38 03 00 20 */	addi r0, r3, 0x20
/* 80B9E840  90 1E 05 E8 */	stw r0, 0x5e8(r30)
/* 80B9E844  34 1E 05 E8 */	addic. r0, r30, 0x5e8
/* 80B9E848  41 82 00 24 */	beq lbl_80B9E86C
/* 80B9E84C  3C 60 80 BA */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B9EAB4@ha */
/* 80B9E850  38 03 EA B4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B9EAB4@l */
/* 80B9E854  90 1E 05 E8 */	stw r0, 0x5e8(r30)
/* 80B9E858  34 1E 05 E8 */	addic. r0, r30, 0x5e8
/* 80B9E85C  41 82 00 10 */	beq lbl_80B9E86C
/* 80B9E860  3C 60 80 BA */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B9EAA8@ha */
/* 80B9E864  38 03 EA A8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B9EAA8@l */
/* 80B9E868  90 1E 05 E8 */	stw r0, 0x5e8(r30)
lbl_80B9E86C:
/* 80B9E86C  34 1E 05 CC */	addic. r0, r30, 0x5cc
/* 80B9E870  41 82 00 10 */	beq lbl_80B9E880
/* 80B9E874  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B9E878  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B9E87C  90 1E 05 E4 */	stw r0, 0x5e4(r30)
lbl_80B9E880:
/* 80B9E880  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80B9E884  41 82 00 10 */	beq lbl_80B9E894
/* 80B9E888  3C 60 80 BA */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80B9EB08@ha */
/* 80B9E88C  38 03 EB 08 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80B9EB08@l */
/* 80B9E890  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80B9E894:
/* 80B9E894  28 1E 00 00 */	cmplwi r30, 0
/* 80B9E898  41 82 00 1C */	beq lbl_80B9E8B4
/* 80B9E89C  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha /* 0x803AB9A0@ha */
/* 80B9E8A0  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l /* 0x803AB9A0@l */
/* 80B9E8A4  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80B9E8A8  7F C3 F3 78 */	mr r3, r30
/* 80B9E8AC  38 80 00 00 */	li r4, 0
/* 80B9E8B0  4B 47 A3 DD */	bl __dt__10fopAc_ac_cFv
lbl_80B9E8B4:
/* 80B9E8B4  7F E0 07 35 */	extsh. r0, r31
/* 80B9E8B8  40 81 00 0C */	ble lbl_80B9E8C4
/* 80B9E8BC  7F C3 F3 78 */	mr r3, r30
/* 80B9E8C0  4B 73 04 7D */	bl __dl__FPv
lbl_80B9E8C4:
/* 80B9E8C4  7F C3 F3 78 */	mr r3, r30
/* 80B9E8C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9E8CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9E8D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9E8D4  7C 08 03 A6 */	mtlr r0
/* 80B9E8D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9E8DC  4E 80 00 20 */	blr 
