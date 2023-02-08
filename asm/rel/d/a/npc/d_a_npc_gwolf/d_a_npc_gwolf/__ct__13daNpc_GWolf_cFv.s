lbl_809F30AC:
/* 809F30AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F30B0  7C 08 02 A6 */	mflr r0
/* 809F30B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F30B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F30BC  93 C1 00 08 */	stw r30, 8(r1)
/* 809F30C0  7C 7F 1B 78 */	mr r31, r3
/* 809F30C4  48 00 4F 0D */	bl __ct__8daNpcF_cFv
/* 809F30C8  3C 60 80 A0 */	lis r3, __vt__13daNpc_GWolf_c@ha /* 0x809F8DE4@ha */
/* 809F30CC  38 03 8D E4 */	addi r0, r3, __vt__13daNpc_GWolf_c@l /* 0x809F8DE4@l */
/* 809F30D0  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 809F30D4  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809F30D8  4B 8C D2 F1 */	bl __ct__10Z2CreatureFv
/* 809F30DC  3B DF 0B DC */	addi r30, r31, 0xbdc
/* 809F30E0  3C 60 80 A0 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x809F8EA4@ha */
/* 809F30E4  38 03 8E A4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x809F8EA4@l */
/* 809F30E8  90 1F 0C 74 */	stw r0, 0xc74(r31)
/* 809F30EC  7F C3 F3 78 */	mr r3, r30
/* 809F30F0  3C 80 80 9F */	lis r4, __ct__4cXyzFv@ha /* 0x809F7D80@ha */
/* 809F30F4  38 84 7D 80 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809F7D80@l */
/* 809F30F8  3C A0 80 9F */	lis r5, __dt__4cXyzFv@ha /* 0x809F7D44@ha */
/* 809F30FC  38 A5 7D 44 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809F7D44@l */
/* 809F3100  38 C0 00 0C */	li r6, 0xc
/* 809F3104  38 E0 00 04 */	li r7, 4
/* 809F3108  4B 96 EC 59 */	bl __construct_array
/* 809F310C  38 7E 00 34 */	addi r3, r30, 0x34
/* 809F3110  3C 80 80 9F */	lis r4, __ct__5csXyzFv@ha /* 0x809F7D40@ha */
/* 809F3114  38 84 7D 40 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809F7D40@l */
/* 809F3118  3C A0 80 9F */	lis r5, __dt__5csXyzFv@ha /* 0x809F7D04@ha */
/* 809F311C  38 A5 7D 04 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809F7D04@l */
/* 809F3120  38 C0 00 06 */	li r6, 6
/* 809F3124  38 E0 00 04 */	li r7, 4
/* 809F3128  4B 96 EC 39 */	bl __construct_array
/* 809F312C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 809F3130  3C 80 80 9F */	lis r4, __ct__5csXyzFv@ha /* 0x809F7D40@ha */
/* 809F3134  38 84 7D 40 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809F7D40@l */
/* 809F3138  3C A0 80 9F */	lis r5, __dt__5csXyzFv@ha /* 0x809F7D04@ha */
/* 809F313C  38 A5 7D 04 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809F7D04@l */
/* 809F3140  38 C0 00 06 */	li r6, 6
/* 809F3144  38 E0 00 04 */	li r7, 4
/* 809F3148  4B 96 EC 19 */	bl __construct_array
/* 809F314C  38 7E 00 64 */	addi r3, r30, 0x64
/* 809F3150  3C 80 80 9F */	lis r4, __ct__5csXyzFv@ha /* 0x809F7D40@ha */
/* 809F3154  38 84 7D 40 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809F7D40@l */
/* 809F3158  3C A0 80 9F */	lis r5, __dt__5csXyzFv@ha /* 0x809F7D04@ha */
/* 809F315C  38 A5 7D 04 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809F7D04@l */
/* 809F3160  38 C0 00 06 */	li r6, 6
/* 809F3164  38 E0 00 04 */	li r7, 4
/* 809F3168  4B 96 EB F9 */	bl __construct_array
/* 809F316C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 809F3170  3C 80 80 9F */	lis r4, __ct__5csXyzFv@ha /* 0x809F7D40@ha */
/* 809F3174  38 84 7D 40 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809F7D40@l */
/* 809F3178  3C A0 80 9F */	lis r5, __dt__5csXyzFv@ha /* 0x809F7D04@ha */
/* 809F317C  38 A5 7D 04 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809F7D04@l */
/* 809F3180  38 C0 00 06 */	li r6, 6
/* 809F3184  38 E0 00 04 */	li r7, 4
/* 809F3188  4B 96 EB D9 */	bl __construct_array
/* 809F318C  7F C3 F3 78 */	mr r3, r30
/* 809F3190  4B 75 DE A9 */	bl initialize__15daNpcF_Lookat_cFv
/* 809F3194  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809F3198  3C 80 80 9F */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x809F7BF8@ha */
/* 809F319C  38 84 7B F8 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x809F7BF8@l */
/* 809F31A0  3C A0 80 9F */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809F7BB0@ha */
/* 809F31A4  38 A5 7B B0 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809F7BB0@l */
/* 809F31A8  38 C0 00 08 */	li r6, 8
/* 809F31AC  38 E0 00 02 */	li r7, 2
/* 809F31B0  4B 96 EB B1 */	bl __construct_array
/* 809F31B4  3B DF 0C 8C */	addi r30, r31, 0xc8c
/* 809F31B8  7F C3 F3 78 */	mr r3, r30
/* 809F31BC  4B 69 08 6D */	bl __ct__12dCcD_GObjInfFv
/* 809F31C0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 809F31C4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 809F31C8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809F31CC  3C 60 80 A0 */	lis r3, __vt__8cM3dGAab@ha /* 0x809F8E98@ha */
/* 809F31D0  38 03 8E 98 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x809F8E98@l */
/* 809F31D4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 809F31D8  3C 60 80 A0 */	lis r3, __vt__8cM3dGCyl@ha /* 0x809F8E8C@ha */
/* 809F31DC  38 03 8E 8C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x809F8E8C@l */
/* 809F31E0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809F31E4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 809F31E8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 809F31EC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 809F31F0  38 03 00 58 */	addi r0, r3, 0x58
/* 809F31F4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809F31F8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 809F31FC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 809F3200  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 809F3204  38 03 00 2C */	addi r0, r3, 0x2c
/* 809F3208  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809F320C  38 03 00 84 */	addi r0, r3, 0x84
/* 809F3210  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809F3214  7F E3 FB 78 */	mr r3, r31
/* 809F3218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F321C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F3220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F3224  7C 08 03 A6 */	mtlr r0
/* 809F3228  38 21 00 10 */	addi r1, r1, 0x10
/* 809F322C  4E 80 00 20 */	blr 
