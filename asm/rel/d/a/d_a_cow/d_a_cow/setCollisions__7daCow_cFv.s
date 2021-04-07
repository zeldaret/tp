lbl_80661720:
/* 80661720  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80661724  7C 08 02 A6 */	mflr r0
/* 80661728  90 01 00 34 */	stw r0, 0x34(r1)
/* 8066172C  39 61 00 30 */	addi r11, r1, 0x30
/* 80661730  4B D0 0A A9 */	bl _savegpr_28
/* 80661734  7C 7E 1B 78 */	mr r30, r3
/* 80661738  3C 60 80 66 */	lis r3, lit_1109@ha /* 0x80663460@ha */
/* 8066173C  3B E3 34 60 */	addi r31, r3, lit_1109@l /* 0x80663460@l */
/* 80661740  3C 60 80 66 */	lis r3, lit_3987@ha /* 0x80662DB0@ha */
/* 80661744  3B A3 2D B0 */	addi r29, r3, lit_3987@l /* 0x80662DB0@l */
/* 80661748  88 1E 0C A6 */	lbz r0, 0xca6(r30)
/* 8066174C  28 00 00 00 */	cmplwi r0, 0
/* 80661750  40 82 01 D8 */	bne lbl_80661928
/* 80661754  88 1F 00 B0 */	lbz r0, 0xb0(r31)
/* 80661758  7C 00 07 75 */	extsb. r0, r0
/* 8066175C  40 82 00 38 */	bne lbl_80661794
/* 80661760  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80661764  D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 80661768  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8066176C  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80661770  D0 03 00 04 */	stfs f0, 4(r3)
/* 80661774  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80661778  D0 03 00 08 */	stfs f0, 8(r3)
/* 8066177C  3C 80 80 66 */	lis r4, __dt__4cXyzFv@ha /* 0x80658A68@ha */
/* 80661780  38 84 8A 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80658A68@l */
/* 80661784  38 BF 00 A4 */	addi r5, r31, 0xa4
/* 80661788  4B FF 6D D1 */	bl __register_global_object
/* 8066178C  38 00 00 01 */	li r0, 1
/* 80661790  98 1F 00 B0 */	stb r0, 0xb0(r31)
lbl_80661794:
/* 80661794  88 1F 00 CC */	lbz r0, 0xcc(r31)
/* 80661798  7C 00 07 75 */	extsb. r0, r0
/* 8066179C  40 82 00 38 */	bne lbl_806617D4
/* 806617A0  C0 1D 00 F0 */	lfs f0, 0xf0(r29)
/* 806617A4  D0 1F 00 D0 */	stfs f0, 0xd0(r31)
/* 806617A8  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 806617AC  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 806617B0  D0 03 00 04 */	stfs f0, 4(r3)
/* 806617B4  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 806617B8  D0 03 00 08 */	stfs f0, 8(r3)
/* 806617BC  3C 80 80 66 */	lis r4, __dt__4cXyzFv@ha /* 0x80658A68@ha */
/* 806617C0  38 84 8A 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80658A68@l */
/* 806617C4  38 BF 00 C0 */	addi r5, r31, 0xc0
/* 806617C8  4B FF 6D 91 */	bl __register_global_object
/* 806617CC  38 00 00 01 */	li r0, 1
/* 806617D0  98 1F 00 CC */	stb r0, 0xcc(r31)
lbl_806617D4:
/* 806617D4  88 1F 00 E8 */	lbz r0, 0xe8(r31)
/* 806617D8  7C 00 07 75 */	extsb. r0, r0
/* 806617DC  40 82 00 38 */	bne lbl_80661814
/* 806617E0  C0 1D 01 34 */	lfs f0, 0x134(r29)
/* 806617E4  D0 1F 00 EC */	stfs f0, 0xec(r31)
/* 806617E8  C0 1D 00 CC */	lfs f0, 0xcc(r29)
/* 806617EC  38 7F 00 EC */	addi r3, r31, 0xec
/* 806617F0  D0 03 00 04 */	stfs f0, 4(r3)
/* 806617F4  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 806617F8  D0 03 00 08 */	stfs f0, 8(r3)
/* 806617FC  3C 80 80 66 */	lis r4, __dt__4cXyzFv@ha /* 0x80658A68@ha */
/* 80661800  38 84 8A 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80658A68@l */
/* 80661804  38 BF 00 DC */	addi r5, r31, 0xdc
/* 80661808  4B FF 6D 51 */	bl __register_global_object
/* 8066180C  38 00 00 01 */	li r0, 1
/* 80661810  98 1F 00 E8 */	stb r0, 0xe8(r31)
lbl_80661814:
/* 80661814  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80661818  80 63 00 04 */	lwz r3, 4(r3)
/* 8066181C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80661820  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80661824  38 63 01 B0 */	addi r3, r3, 0x1b0
/* 80661828  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8066182C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80661830  4B CE 4C 81 */	bl PSMTXCopy
/* 80661834  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80661838  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8066183C  38 9F 00 B4 */	addi r4, r31, 0xb4
/* 80661840  38 A1 00 08 */	addi r5, r1, 8
/* 80661844  4B CE 55 29 */	bl PSMTXMultVec
/* 80661848  38 7E 09 84 */	addi r3, r30, 0x984
/* 8066184C  C0 3D 00 88 */	lfs f1, 0x88(r29)
/* 80661850  4B C0 DE B9 */	bl SetR__8cM3dGSphFf
/* 80661854  38 7E 09 84 */	addi r3, r30, 0x984
/* 80661858  38 81 00 08 */	addi r4, r1, 8
/* 8066185C  4B C0 DD ED */	bl SetC__8cM3dGSphFRC4cXyz
/* 80661860  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80661864  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80661868  3B 83 23 3C */	addi r28, r3, 0x233c
/* 8066186C  7F 83 E3 78 */	mr r3, r28
/* 80661870  38 9E 08 60 */	addi r4, r30, 0x860
/* 80661874  4B C0 33 35 */	bl Set__4cCcSFP8cCcD_Obj
/* 80661878  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8066187C  80 63 00 04 */	lwz r3, 4(r3)
/* 80661880  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80661884  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80661888  38 63 00 30 */	addi r3, r3, 0x30
/* 8066188C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80661890  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80661894  4B CE 4C 1D */	bl PSMTXCopy
/* 80661898  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8066189C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806618A0  38 9F 00 D0 */	addi r4, r31, 0xd0
/* 806618A4  38 A1 00 08 */	addi r5, r1, 8
/* 806618A8  4B CE 54 C5 */	bl PSMTXMultVec
/* 806618AC  38 7E 0A BC */	addi r3, r30, 0xabc
/* 806618B0  C0 3D 00 D4 */	lfs f1, 0xd4(r29)
/* 806618B4  4B C0 DE 55 */	bl SetR__8cM3dGSphFf
/* 806618B8  38 7E 0A BC */	addi r3, r30, 0xabc
/* 806618BC  38 81 00 08 */	addi r4, r1, 8
/* 806618C0  4B C0 DD 89 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806618C4  7F 83 E3 78 */	mr r3, r28
/* 806618C8  38 9E 09 98 */	addi r4, r30, 0x998
/* 806618CC  4B C0 32 DD */	bl Set__4cCcSFP8cCcD_Obj
/* 806618D0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 806618D4  80 63 00 04 */	lwz r3, 4(r3)
/* 806618D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806618DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806618E0  38 63 02 10 */	addi r3, r3, 0x210
/* 806618E4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806618E8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806618EC  4B CE 4B C5 */	bl PSMTXCopy
/* 806618F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806618F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806618F8  38 9F 00 EC */	addi r4, r31, 0xec
/* 806618FC  38 A1 00 08 */	addi r5, r1, 8
/* 80661900  4B CE 54 6D */	bl PSMTXMultVec
/* 80661904  38 7E 0B F4 */	addi r3, r30, 0xbf4
/* 80661908  C0 3D 00 D4 */	lfs f1, 0xd4(r29)
/* 8066190C  4B C0 DD FD */	bl SetR__8cM3dGSphFf
/* 80661910  38 7E 0B F4 */	addi r3, r30, 0xbf4
/* 80661914  38 81 00 08 */	addi r4, r1, 8
/* 80661918  4B C0 DD 31 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8066191C  7F 83 E3 78 */	mr r3, r28
/* 80661920  38 9E 0A D0 */	addi r4, r30, 0xad0
/* 80661924  4B C0 32 85 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80661928:
/* 80661928  39 61 00 30 */	addi r11, r1, 0x30
/* 8066192C  4B D0 08 F9 */	bl _restgpr_28
/* 80661930  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80661934  7C 08 03 A6 */	mtlr r0
/* 80661938  38 21 00 30 */	addi r1, r1, 0x30
/* 8066193C  4E 80 00 20 */	blr 
