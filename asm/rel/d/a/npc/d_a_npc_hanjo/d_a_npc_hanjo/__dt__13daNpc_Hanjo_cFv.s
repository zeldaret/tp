lbl_809F908C:
/* 809F908C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F9090  7C 08 02 A6 */	mflr r0
/* 809F9094  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F9098  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F909C  93 C1 00 08 */	stw r30, 8(r1)
/* 809F90A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 809F90A4  7C 9F 23 78 */	mr r31, r4
/* 809F90A8  41 82 01 B4 */	beq lbl_809F925C
/* 809F90AC  3C 60 80 A0 */	lis r3, __vt__13daNpc_Hanjo_c@ha
/* 809F90B0  38 03 11 AC */	addi r0, r3, __vt__13daNpc_Hanjo_c@l
/* 809F90B4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 809F90B8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809F90BC  28 03 00 00 */	cmplwi r3, 0
/* 809F90C0  41 82 00 08 */	beq lbl_809F90C8
/* 809F90C4  4B 61 82 4C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809F90C8:
/* 809F90C8  7F C3 F3 78 */	mr r3, r30
/* 809F90CC  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 809F90D0  54 00 10 3A */	slwi r0, r0, 2
/* 809F90D4  3C 80 80 A0 */	lis r4, l_loadResPtrnList@ha
/* 809F90D8  38 84 0A 08 */	addi r4, r4, l_loadResPtrnList@l
/* 809F90DC  7C 84 00 2E */	lwzx r4, r4, r0
/* 809F90E0  3C A0 80 A0 */	lis r5, l_resNameList@ha
/* 809F90E4  38 A5 09 D8 */	addi r5, r5, l_resNameList@l
/* 809F90E8  4B 74 F3 C4 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 809F90EC  38 7E 11 10 */	addi r3, r30, 0x1110
/* 809F90F0  3C 80 80 A0 */	lis r4, __dt__18daNpc_HanjoStone_cFv@ha
/* 809F90F4  38 84 FF D4 */	addi r4, r4, __dt__18daNpc_HanjoStone_cFv@l
/* 809F90F8  38 A0 01 74 */	li r5, 0x174
/* 809F90FC  38 C0 00 04 */	li r6, 4
/* 809F9100  4B 96 8B E8 */	b __destroy_arr
/* 809F9104  34 1E 10 E8 */	addic. r0, r30, 0x10e8
/* 809F9108  41 82 00 10 */	beq lbl_809F9118
/* 809F910C  3C 60 80 A0 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 809F9110  38 03 11 A0 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 809F9114  90 1E 11 0C */	stw r0, 0x110c(r30)
lbl_809F9118:
/* 809F9118  38 7E 10 C8 */	addi r3, r30, 0x10c8
/* 809F911C  3C 80 80 A0 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 809F9120  38 84 F2 58 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 809F9124  38 A0 00 08 */	li r5, 8
/* 809F9128  38 C0 00 04 */	li r6, 4
/* 809F912C  4B 96 8B BC */	b __destroy_arr
/* 809F9130  34 1E 0F 88 */	addic. r0, r30, 0xf88
/* 809F9134  41 82 00 84 */	beq lbl_809F91B8
/* 809F9138  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809F913C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809F9140  90 7E 0F C4 */	stw r3, 0xfc4(r30)
/* 809F9144  38 03 00 2C */	addi r0, r3, 0x2c
/* 809F9148  90 1E 10 A8 */	stw r0, 0x10a8(r30)
/* 809F914C  38 03 00 84 */	addi r0, r3, 0x84
/* 809F9150  90 1E 10 C0 */	stw r0, 0x10c0(r30)
/* 809F9154  34 1E 10 8C */	addic. r0, r30, 0x108c
/* 809F9158  41 82 00 54 */	beq lbl_809F91AC
/* 809F915C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809F9160  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809F9164  90 7E 10 A8 */	stw r3, 0x10a8(r30)
/* 809F9168  38 03 00 58 */	addi r0, r3, 0x58
/* 809F916C  90 1E 10 C0 */	stw r0, 0x10c0(r30)
/* 809F9170  34 1E 10 AC */	addic. r0, r30, 0x10ac
/* 809F9174  41 82 00 10 */	beq lbl_809F9184
/* 809F9178  3C 60 80 A0 */	lis r3, __vt__8cM3dGCyl@ha
/* 809F917C  38 03 11 94 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809F9180  90 1E 10 C0 */	stw r0, 0x10c0(r30)
lbl_809F9184:
/* 809F9184  34 1E 10 8C */	addic. r0, r30, 0x108c
/* 809F9188  41 82 00 24 */	beq lbl_809F91AC
/* 809F918C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809F9190  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809F9194  90 1E 10 A8 */	stw r0, 0x10a8(r30)
/* 809F9198  34 1E 10 8C */	addic. r0, r30, 0x108c
/* 809F919C  41 82 00 10 */	beq lbl_809F91AC
/* 809F91A0  3C 60 80 A0 */	lis r3, __vt__8cM3dGAab@ha
/* 809F91A4  38 03 11 88 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809F91A8  90 1E 10 A4 */	stw r0, 0x10a4(r30)
lbl_809F91AC:
/* 809F91AC  38 7E 0F 88 */	addi r3, r30, 0xf88
/* 809F91B0  38 80 00 00 */	li r4, 0
/* 809F91B4  4B 68 AF 30 */	b __dt__12dCcD_GObjInfFv
lbl_809F91B8:
/* 809F91B8  34 1E 0E 4C */	addic. r0, r30, 0xe4c
/* 809F91BC  41 82 00 84 */	beq lbl_809F9240
/* 809F91C0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809F91C4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809F91C8  90 7E 0E 88 */	stw r3, 0xe88(r30)
/* 809F91CC  38 03 00 2C */	addi r0, r3, 0x2c
/* 809F91D0  90 1E 0F 6C */	stw r0, 0xf6c(r30)
/* 809F91D4  38 03 00 84 */	addi r0, r3, 0x84
/* 809F91D8  90 1E 0F 84 */	stw r0, 0xf84(r30)
/* 809F91DC  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 809F91E0  41 82 00 54 */	beq lbl_809F9234
/* 809F91E4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809F91E8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809F91EC  90 7E 0F 6C */	stw r3, 0xf6c(r30)
/* 809F91F0  38 03 00 58 */	addi r0, r3, 0x58
/* 809F91F4  90 1E 0F 84 */	stw r0, 0xf84(r30)
/* 809F91F8  34 1E 0F 70 */	addic. r0, r30, 0xf70
/* 809F91FC  41 82 00 10 */	beq lbl_809F920C
/* 809F9200  3C 60 80 A0 */	lis r3, __vt__8cM3dGCyl@ha
/* 809F9204  38 03 11 94 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809F9208  90 1E 0F 84 */	stw r0, 0xf84(r30)
lbl_809F920C:
/* 809F920C  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 809F9210  41 82 00 24 */	beq lbl_809F9234
/* 809F9214  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809F9218  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809F921C  90 1E 0F 6C */	stw r0, 0xf6c(r30)
/* 809F9220  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 809F9224  41 82 00 10 */	beq lbl_809F9234
/* 809F9228  3C 60 80 A0 */	lis r3, __vt__8cM3dGAab@ha
/* 809F922C  38 03 11 88 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809F9230  90 1E 0F 68 */	stw r0, 0xf68(r30)
lbl_809F9234:
/* 809F9234  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 809F9238  38 80 00 00 */	li r4, 0
/* 809F923C  4B 68 AE A8 */	b __dt__12dCcD_GObjInfFv
lbl_809F9240:
/* 809F9240  7F C3 F3 78 */	mr r3, r30
/* 809F9244  38 80 00 00 */	li r4, 0
/* 809F9248  48 00 5C 11 */	bl __dt__8daNpcT_cFv
/* 809F924C  7F E0 07 35 */	extsh. r0, r31
/* 809F9250  40 81 00 0C */	ble lbl_809F925C
/* 809F9254  7F C3 F3 78 */	mr r3, r30
/* 809F9258  4B 8D 5A E4 */	b __dl__FPv
lbl_809F925C:
/* 809F925C  7F C3 F3 78 */	mr r3, r30
/* 809F9260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F9264  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F9268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F926C  7C 08 03 A6 */	mtlr r0
/* 809F9270  38 21 00 10 */	addi r1, r1, 0x10
/* 809F9274  4E 80 00 20 */	blr 
