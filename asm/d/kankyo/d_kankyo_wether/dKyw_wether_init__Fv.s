lbl_800574E0:
/* 800574E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800574E4  7C 08 02 A6 */	mflr r0
/* 800574E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800574EC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800574F0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800574F4  38 00 00 00 */	li r0, 0
/* 800574F8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 800574FC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80057500  98 03 0E 70 */	stb r0, 0xe70(r3)
/* 80057504  98 03 0E D4 */	stb r0, 0xed4(r3)
/* 80057508  90 03 0E D8 */	stw r0, 0xed8(r3)
/* 8005750C  98 03 0E 7C */	stb r0, 0xe7c(r3)
/* 80057510  90 03 0E 80 */	stw r0, 0xe80(r3)
/* 80057514  98 03 0E 88 */	stb r0, 0xe88(r3)
/* 80057518  98 03 0E 92 */	stb r0, 0xe92(r3)
/* 8005751C  90 03 0E 8C */	stw r0, 0xe8c(r3)
/* 80057520  98 03 0E 90 */	stb r0, 0xe90(r3)
/* 80057524  98 03 0E 91 */	stb r0, 0xe91(r3)
/* 80057528  98 03 0E 98 */	stb r0, 0xe98(r3)
/* 8005752C  90 03 0E 9C */	stw r0, 0xe9c(r3)
/* 80057530  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 80057534  D0 03 0E A0 */	stfs f0, 0xea0(r3)
/* 80057538  98 03 0E B4 */	stb r0, 0xeb4(r3)
/* 8005753C  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 80057540  D0 03 0E BC */	stfs f0, 0xebc(r3)
/* 80057544  98 03 0E B5 */	stb r0, 0xeb5(r3)
/* 80057548  98 03 0E A8 */	stb r0, 0xea8(r3)
/* 8005754C  90 03 0E AC */	stw r0, 0xeac(r3)
/* 80057550  98 03 0F 20 */	stb r0, 0xf20(r3)
/* 80057554  90 03 0F 24 */	stw r0, 0xf24(r3)
/* 80057558  98 03 0F 21 */	stb r0, 0xf21(r3)
/* 8005755C  90 03 0F 28 */	stw r0, 0xf28(r3)
/* 80057560  98 03 10 38 */	stb r0, 0x1038(r3)
/* 80057564  90 03 10 3C */	stw r0, 0x103c(r3)
/* 80057568  98 03 10 44 */	stb r0, 0x1044(r3)
/* 8005756C  90 03 10 48 */	stw r0, 0x1048(r3)
/* 80057570  98 03 10 50 */	stb r0, 0x1050(r3)
/* 80057574  90 03 10 54 */	stw r0, 0x1054(r3)
/* 80057578  98 03 10 51 */	stb r0, 0x1051(r3)
/* 8005757C  D0 03 0E 60 */	stfs f0, 0xe60(r3)
/* 80057580  48 00 2F FD */	bl dKyw_wind_init__Fv
/* 80057584  48 00 37 C1 */	bl dKyw_pntwind_init__Fv
/* 80057588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005758C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80057590  3B C3 4E 00 */	addi r30, r3, 0x4e00
/* 80057594  7F C3 F3 78 */	mr r3, r30
/* 80057598  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 8005759C  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 800575A0  48 31 13 F5 */	bl strcmp
/* 800575A4  2C 03 00 00 */	cmpwi r3, 0
/* 800575A8  40 82 03 E0 */	bne lbl_80057988
/* 800575AC  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 800575B0  2C 00 00 01 */	cmpwi r0, 1
/* 800575B4  40 82 03 D4 */	bne lbl_80057988
/* 800575B8  38 60 00 00 */	li r3, 0
/* 800575BC  4B FD 53 C1 */	bl getLayerNo__14dComIfG_play_cFi
/* 800575C0  2C 03 00 08 */	cmpwi r3, 8
/* 800575C4  40 80 03 C4 */	bge lbl_80057988
/* 800575C8  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 800575CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800575D0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800575D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800575D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800575DC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800575E0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 800575E4  38 80 00 00 */	li r4, 0
/* 800575E8  90 81 00 08 */	stw r4, 8(r1)
/* 800575EC  38 00 FF FF */	li r0, -1
/* 800575F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 800575F4  90 81 00 10 */	stw r4, 0x10(r1)
/* 800575F8  90 81 00 14 */	stw r4, 0x14(r1)
/* 800575FC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80057600  38 80 00 00 */	li r4, 0
/* 80057604  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000878F@ha */
/* 80057608  38 A5 87 8F */	addi r5, r5, 0x878F /* 0x0000878F@l */
/* 8005760C  38 C1 00 20 */	addi r6, r1, 0x20
/* 80057610  38 E0 00 00 */	li r7, 0
/* 80057614  39 00 00 00 */	li r8, 0
/* 80057618  39 20 00 00 */	li r9, 0
/* 8005761C  39 40 00 FF */	li r10, 0xff
/* 80057620  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 80057624  4B FF 54 6D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80057628  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8005762C  38 80 00 00 */	li r4, 0
/* 80057630  90 81 00 08 */	stw r4, 8(r1)
/* 80057634  38 00 FF FF */	li r0, -1
/* 80057638  90 01 00 0C */	stw r0, 0xc(r1)
/* 8005763C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80057640  90 81 00 14 */	stw r4, 0x14(r1)
/* 80057644  90 81 00 18 */	stw r4, 0x18(r1)
/* 80057648  38 80 00 00 */	li r4, 0
/* 8005764C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008790@ha */
/* 80057650  38 A5 87 90 */	addi r5, r5, 0x8790 /* 0x00008790@l */
/* 80057654  38 C1 00 20 */	addi r6, r1, 0x20
/* 80057658  38 E0 00 00 */	li r7, 0
/* 8005765C  39 00 00 00 */	li r8, 0
/* 80057660  39 20 00 00 */	li r9, 0
/* 80057664  39 40 00 FF */	li r10, 0xff
/* 80057668  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 8005766C  4B FF 54 25 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80057670  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80057674  38 80 00 00 */	li r4, 0
/* 80057678  90 81 00 08 */	stw r4, 8(r1)
/* 8005767C  38 00 FF FF */	li r0, -1
/* 80057680  90 01 00 0C */	stw r0, 0xc(r1)
/* 80057684  90 81 00 10 */	stw r4, 0x10(r1)
/* 80057688  90 81 00 14 */	stw r4, 0x14(r1)
/* 8005768C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80057690  38 80 00 00 */	li r4, 0
/* 80057694  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008791@ha */
/* 80057698  38 A5 87 91 */	addi r5, r5, 0x8791 /* 0x00008791@l */
/* 8005769C  38 C1 00 20 */	addi r6, r1, 0x20
/* 800576A0  38 E0 00 00 */	li r7, 0
/* 800576A4  39 00 00 00 */	li r8, 0
/* 800576A8  39 20 00 00 */	li r9, 0
/* 800576AC  39 40 00 FF */	li r10, 0xff
/* 800576B0  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 800576B4  4B FF 53 DD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 800576B8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 800576BC  38 80 00 00 */	li r4, 0
/* 800576C0  90 81 00 08 */	stw r4, 8(r1)
/* 800576C4  38 00 FF FF */	li r0, -1
/* 800576C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800576CC  90 81 00 10 */	stw r4, 0x10(r1)
/* 800576D0  90 81 00 14 */	stw r4, 0x14(r1)
/* 800576D4  90 81 00 18 */	stw r4, 0x18(r1)
/* 800576D8  38 80 00 00 */	li r4, 0
/* 800576DC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008792@ha */
/* 800576E0  38 A5 87 92 */	addi r5, r5, 0x8792 /* 0x00008792@l */
/* 800576E4  38 C1 00 20 */	addi r6, r1, 0x20
/* 800576E8  38 E0 00 00 */	li r7, 0
/* 800576EC  39 00 00 00 */	li r8, 0
/* 800576F0  39 20 00 00 */	li r9, 0
/* 800576F4  39 40 00 FF */	li r10, 0xff
/* 800576F8  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 800576FC  4B FF 53 95 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80057700  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80057704  38 80 00 00 */	li r4, 0
/* 80057708  90 81 00 08 */	stw r4, 8(r1)
/* 8005770C  38 00 FF FF */	li r0, -1
/* 80057710  90 01 00 0C */	stw r0, 0xc(r1)
/* 80057714  90 81 00 10 */	stw r4, 0x10(r1)
/* 80057718  90 81 00 14 */	stw r4, 0x14(r1)
/* 8005771C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80057720  38 80 00 00 */	li r4, 0
/* 80057724  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008793@ha */
/* 80057728  38 A5 87 93 */	addi r5, r5, 0x8793 /* 0x00008793@l */
/* 8005772C  38 C1 00 20 */	addi r6, r1, 0x20
/* 80057730  38 E0 00 00 */	li r7, 0
/* 80057734  39 00 00 00 */	li r8, 0
/* 80057738  39 20 00 00 */	li r9, 0
/* 8005773C  39 40 00 FF */	li r10, 0xff
/* 80057740  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 80057744  4B FF 53 4D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80057748  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8005774C  38 80 00 00 */	li r4, 0
/* 80057750  90 81 00 08 */	stw r4, 8(r1)
/* 80057754  38 00 FF FF */	li r0, -1
/* 80057758  90 01 00 0C */	stw r0, 0xc(r1)
/* 8005775C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80057760  90 81 00 14 */	stw r4, 0x14(r1)
/* 80057764  90 81 00 18 */	stw r4, 0x18(r1)
/* 80057768  38 80 00 00 */	li r4, 0
/* 8005776C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008794@ha */
/* 80057770  38 A5 87 94 */	addi r5, r5, 0x8794 /* 0x00008794@l */
/* 80057774  38 C1 00 20 */	addi r6, r1, 0x20
/* 80057778  38 E0 00 00 */	li r7, 0
/* 8005777C  39 00 00 00 */	li r8, 0
/* 80057780  39 20 00 00 */	li r9, 0
/* 80057784  39 40 00 FF */	li r10, 0xff
/* 80057788  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 8005778C  4B FF 53 05 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80057790  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80057794  38 80 00 00 */	li r4, 0
/* 80057798  90 81 00 08 */	stw r4, 8(r1)
/* 8005779C  38 00 FF FF */	li r0, -1
/* 800577A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 800577A4  90 81 00 10 */	stw r4, 0x10(r1)
/* 800577A8  90 81 00 14 */	stw r4, 0x14(r1)
/* 800577AC  90 81 00 18 */	stw r4, 0x18(r1)
/* 800577B0  38 80 00 00 */	li r4, 0
/* 800577B4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008795@ha */
/* 800577B8  38 A5 87 95 */	addi r5, r5, 0x8795 /* 0x00008795@l */
/* 800577BC  38 C1 00 20 */	addi r6, r1, 0x20
/* 800577C0  38 E0 00 00 */	li r7, 0
/* 800577C4  39 00 00 00 */	li r8, 0
/* 800577C8  39 20 00 00 */	li r9, 0
/* 800577CC  39 40 00 FF */	li r10, 0xff
/* 800577D0  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 800577D4  4B FF 52 BD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 800577D8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 800577DC  38 80 00 00 */	li r4, 0
/* 800577E0  90 81 00 08 */	stw r4, 8(r1)
/* 800577E4  38 00 FF FF */	li r0, -1
/* 800577E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800577EC  90 81 00 10 */	stw r4, 0x10(r1)
/* 800577F0  90 81 00 14 */	stw r4, 0x14(r1)
/* 800577F4  90 81 00 18 */	stw r4, 0x18(r1)
/* 800577F8  38 80 00 00 */	li r4, 0
/* 800577FC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008796@ha */
/* 80057800  38 A5 87 96 */	addi r5, r5, 0x8796 /* 0x00008796@l */
/* 80057804  38 C1 00 20 */	addi r6, r1, 0x20
/* 80057808  38 E0 00 00 */	li r7, 0
/* 8005780C  39 00 00 00 */	li r8, 0
/* 80057810  39 20 00 00 */	li r9, 0
/* 80057814  39 40 00 FF */	li r10, 0xff
/* 80057818  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 8005781C  4B FF 52 75 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80057820  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80057824  38 80 00 00 */	li r4, 0
/* 80057828  90 81 00 08 */	stw r4, 8(r1)
/* 8005782C  38 00 FF FF */	li r0, -1
/* 80057830  90 01 00 0C */	stw r0, 0xc(r1)
/* 80057834  90 81 00 10 */	stw r4, 0x10(r1)
/* 80057838  90 81 00 14 */	stw r4, 0x14(r1)
/* 8005783C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80057840  38 80 00 00 */	li r4, 0
/* 80057844  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008797@ha */
/* 80057848  38 A5 87 97 */	addi r5, r5, 0x8797 /* 0x00008797@l */
/* 8005784C  38 C1 00 20 */	addi r6, r1, 0x20
/* 80057850  38 E0 00 00 */	li r7, 0
/* 80057854  39 00 00 00 */	li r8, 0
/* 80057858  39 20 00 00 */	li r9, 0
/* 8005785C  39 40 00 FF */	li r10, 0xff
/* 80057860  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 80057864  4B FF 52 2D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80057868  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8005786C  38 80 00 00 */	li r4, 0
/* 80057870  90 81 00 08 */	stw r4, 8(r1)
/* 80057874  38 00 FF FF */	li r0, -1
/* 80057878  90 01 00 0C */	stw r0, 0xc(r1)
/* 8005787C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80057880  90 81 00 14 */	stw r4, 0x14(r1)
/* 80057884  90 81 00 18 */	stw r4, 0x18(r1)
/* 80057888  38 80 00 00 */	li r4, 0
/* 8005788C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008798@ha */
/* 80057890  38 A5 87 98 */	addi r5, r5, 0x8798 /* 0x00008798@l */
/* 80057894  38 C1 00 20 */	addi r6, r1, 0x20
/* 80057898  38 E0 00 00 */	li r7, 0
/* 8005789C  39 00 00 00 */	li r8, 0
/* 800578A0  39 20 00 00 */	li r9, 0
/* 800578A4  39 40 00 FF */	li r10, 0xff
/* 800578A8  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 800578AC  4B FF 51 E5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 800578B0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 800578B4  38 80 00 00 */	li r4, 0
/* 800578B8  90 81 00 08 */	stw r4, 8(r1)
/* 800578BC  38 00 FF FF */	li r0, -1
/* 800578C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 800578C4  90 81 00 10 */	stw r4, 0x10(r1)
/* 800578C8  90 81 00 14 */	stw r4, 0x14(r1)
/* 800578CC  90 81 00 18 */	stw r4, 0x18(r1)
/* 800578D0  38 80 00 00 */	li r4, 0
/* 800578D4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008799@ha */
/* 800578D8  38 A5 87 99 */	addi r5, r5, 0x8799 /* 0x00008799@l */
/* 800578DC  38 C1 00 20 */	addi r6, r1, 0x20
/* 800578E0  38 E0 00 00 */	li r7, 0
/* 800578E4  39 00 00 00 */	li r8, 0
/* 800578E8  39 20 00 00 */	li r9, 0
/* 800578EC  39 40 00 FF */	li r10, 0xff
/* 800578F0  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 800578F4  4B FF 51 9D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 800578F8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 800578FC  38 80 00 00 */	li r4, 0
/* 80057900  90 81 00 08 */	stw r4, 8(r1)
/* 80057904  38 00 FF FF */	li r0, -1
/* 80057908  90 01 00 0C */	stw r0, 0xc(r1)
/* 8005790C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80057910  90 81 00 14 */	stw r4, 0x14(r1)
/* 80057914  90 81 00 18 */	stw r4, 0x18(r1)
/* 80057918  38 80 00 00 */	li r4, 0
/* 8005791C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000879A@ha */
/* 80057920  38 A5 87 9A */	addi r5, r5, 0x879A /* 0x0000879A@l */
/* 80057924  38 C1 00 20 */	addi r6, r1, 0x20
/* 80057928  38 E0 00 00 */	li r7, 0
/* 8005792C  39 00 00 00 */	li r8, 0
/* 80057930  39 20 00 00 */	li r9, 0
/* 80057934  39 40 00 FF */	li r10, 0xff
/* 80057938  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 8005793C  4B FF 51 55 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80057940  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80057944  38 80 00 00 */	li r4, 0
/* 80057948  90 81 00 08 */	stw r4, 8(r1)
/* 8005794C  38 00 FF FF */	li r0, -1
/* 80057950  90 01 00 0C */	stw r0, 0xc(r1)
/* 80057954  90 81 00 10 */	stw r4, 0x10(r1)
/* 80057958  90 81 00 14 */	stw r4, 0x14(r1)
/* 8005795C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80057960  38 80 00 00 */	li r4, 0
/* 80057964  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000879B@ha */
/* 80057968  38 A5 87 9B */	addi r5, r5, 0x879B /* 0x0000879B@l */
/* 8005796C  38 C1 00 20 */	addi r6, r1, 0x20
/* 80057970  38 E0 00 00 */	li r7, 0
/* 80057974  39 00 00 00 */	li r8, 0
/* 80057978  39 20 00 00 */	li r9, 0
/* 8005797C  39 40 00 FF */	li r10, 0xff
/* 80057980  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 80057984  4B FF 51 0D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80057988:
/* 80057988  7F C3 F3 78 */	mr r3, r30
/* 8005798C  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80057990  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80057994  38 84 00 08 */	addi r4, r4, 8
/* 80057998  48 31 0F FD */	bl strcmp
/* 8005799C  2C 03 00 00 */	cmpwi r3, 0
/* 800579A0  40 82 00 34 */	bne lbl_800579D4
/* 800579A4  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 800579A8  7C 00 07 75 */	extsb. r0, r0
/* 800579AC  41 82 00 1C */	beq lbl_800579C8
/* 800579B0  2C 00 00 03 */	cmpwi r0, 3
/* 800579B4  41 82 00 14 */	beq lbl_800579C8
/* 800579B8  2C 00 00 06 */	cmpwi r0, 6
/* 800579BC  41 82 00 0C */	beq lbl_800579C8
/* 800579C0  2C 00 00 0D */	cmpwi r0, 0xd
/* 800579C4  40 82 00 10 */	bne lbl_800579D4
lbl_800579C8:
/* 800579C8  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 800579CC  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 800579D0  48 27 05 ED */	bl initStrongWindSe__10Z2EnvSeMgrFv
lbl_800579D4:
/* 800579D4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800579D8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800579DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800579E0  7C 08 03 A6 */	mtlr r0
/* 800579E4  38 21 00 40 */	addi r1, r1, 0x40
/* 800579E8  4E 80 00 20 */	blr 
