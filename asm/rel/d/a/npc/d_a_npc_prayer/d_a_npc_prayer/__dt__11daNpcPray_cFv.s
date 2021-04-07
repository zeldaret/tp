lbl_80AB3000:
/* 80AB3000  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB3004  7C 08 02 A6 */	mflr r0
/* 80AB3008  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB300C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB3010  4B 8A F1 C1 */	bl _savegpr_26
/* 80AB3014  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB3018  7C 9F 23 78 */	mr r31, r4
/* 80AB301C  41 82 01 CC */	beq lbl_80AB31E8
/* 80AB3020  3C 60 80 AB */	lis r3, __vt__11daNpcPray_c@ha /* 0x80AB5AC8@ha */
/* 80AB3024  38 03 5A C8 */	addi r0, r3, __vt__11daNpcPray_c@l /* 0x80AB5AC8@l */
/* 80AB3028  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80AB302C  3B 40 00 00 */	li r26, 0
/* 80AB3030  3B A0 00 00 */	li r29, 0
/* 80AB3034  3B 80 00 00 */	li r28, 0
/* 80AB3038  3C 60 80 AB */	lis r3, l_arcNames@ha /* 0x80AB59EC@ha */
/* 80AB303C  3B 63 59 EC */	addi r27, r3, l_arcNames@l /* 0x80AB59EC@l */
lbl_80AB3040:
/* 80AB3040  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 80AB3044  7C 7E 1A 14 */	add r3, r30, r3
/* 80AB3048  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80AB304C  4B 57 9F BD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80AB3050  3B 5A 00 01 */	addi r26, r26, 1
/* 80AB3054  2C 1A 00 02 */	cmpwi r26, 2
/* 80AB3058  3B BD 00 04 */	addi r29, r29, 4
/* 80AB305C  3B 9C 00 08 */	addi r28, r28, 8
/* 80AB3060  41 80 FF E0 */	blt lbl_80AB3040
/* 80AB3064  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80AB3068  4B 69 D6 85 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AB306C  28 03 00 00 */	cmplwi r3, 0
/* 80AB3070  41 82 00 10 */	beq lbl_80AB3080
/* 80AB3074  4B 56 6C 09 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80AB3078  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80AB307C  4B 69 D6 65 */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80AB3080:
/* 80AB3080  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AB3084  28 00 00 00 */	cmplwi r0, 0
/* 80AB3088  41 82 00 0C */	beq lbl_80AB3094
/* 80AB308C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AB3090  4B 55 E2 81 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AB3094:
/* 80AB3094  34 1E 0C A0 */	addic. r0, r30, 0xca0
/* 80AB3098  41 82 00 84 */	beq lbl_80AB311C
/* 80AB309C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AB30A0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AB30A4  90 7E 0C DC */	stw r3, 0xcdc(r30)
/* 80AB30A8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AB30AC  90 1E 0D C0 */	stw r0, 0xdc0(r30)
/* 80AB30B0  38 03 00 84 */	addi r0, r3, 0x84
/* 80AB30B4  90 1E 0D D8 */	stw r0, 0xdd8(r30)
/* 80AB30B8  34 1E 0D A4 */	addic. r0, r30, 0xda4
/* 80AB30BC  41 82 00 54 */	beq lbl_80AB3110
/* 80AB30C0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AB30C4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AB30C8  90 7E 0D C0 */	stw r3, 0xdc0(r30)
/* 80AB30CC  38 03 00 58 */	addi r0, r3, 0x58
/* 80AB30D0  90 1E 0D D8 */	stw r0, 0xdd8(r30)
/* 80AB30D4  34 1E 0D C4 */	addic. r0, r30, 0xdc4
/* 80AB30D8  41 82 00 10 */	beq lbl_80AB30E8
/* 80AB30DC  3C 60 80 AB */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AB5B70@ha */
/* 80AB30E0  38 03 5B 70 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AB5B70@l */
/* 80AB30E4  90 1E 0D D8 */	stw r0, 0xdd8(r30)
lbl_80AB30E8:
/* 80AB30E8  34 1E 0D A4 */	addic. r0, r30, 0xda4
/* 80AB30EC  41 82 00 24 */	beq lbl_80AB3110
/* 80AB30F0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AB30F4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AB30F8  90 1E 0D C0 */	stw r0, 0xdc0(r30)
/* 80AB30FC  34 1E 0D A4 */	addic. r0, r30, 0xda4
/* 80AB3100  41 82 00 10 */	beq lbl_80AB3110
/* 80AB3104  3C 60 80 AB */	lis r3, __vt__8cM3dGAab@ha /* 0x80AB5B7C@ha */
/* 80AB3108  38 03 5B 7C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AB5B7C@l */
/* 80AB310C  90 1E 0D BC */	stw r0, 0xdbc(r30)
lbl_80AB3110:
/* 80AB3110  38 7E 0C A0 */	addi r3, r30, 0xca0
/* 80AB3114  38 80 00 00 */	li r4, 0
/* 80AB3118  4B 5D 0F CD */	bl __dt__12dCcD_GObjInfFv
lbl_80AB311C:
/* 80AB311C  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80AB3120  3C 80 80 AB */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80AB4F10@ha */
/* 80AB3124  38 84 4F 10 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80AB4F10@l */
/* 80AB3128  38 A0 00 08 */	li r5, 8
/* 80AB312C  38 C0 00 02 */	li r6, 2
/* 80AB3130  4B 8A EB B9 */	bl __destroy_arr
/* 80AB3134  34 1E 0B F0 */	addic. r0, r30, 0xbf0
/* 80AB3138  41 82 00 88 */	beq lbl_80AB31C0
/* 80AB313C  3C 60 80 AB */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80AB5B88@ha */
/* 80AB3140  38 03 5B 88 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80AB5B88@l */
/* 80AB3144  90 1E 0C 88 */	stw r0, 0xc88(r30)
/* 80AB3148  38 7E 0C 6C */	addi r3, r30, 0xc6c
/* 80AB314C  3C 80 80 AB */	lis r4, __dt__5csXyzFv@ha /* 0x80AB5064@ha */
/* 80AB3150  38 84 50 64 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AB5064@l */
/* 80AB3154  38 A0 00 06 */	li r5, 6
/* 80AB3158  38 C0 00 04 */	li r6, 4
/* 80AB315C  4B 8A EB 8D */	bl __destroy_arr
/* 80AB3160  38 7E 0C 54 */	addi r3, r30, 0xc54
/* 80AB3164  3C 80 80 AB */	lis r4, __dt__5csXyzFv@ha /* 0x80AB5064@ha */
/* 80AB3168  38 84 50 64 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AB5064@l */
/* 80AB316C  38 A0 00 06 */	li r5, 6
/* 80AB3170  38 C0 00 04 */	li r6, 4
/* 80AB3174  4B 8A EB 75 */	bl __destroy_arr
/* 80AB3178  38 7E 0C 3C */	addi r3, r30, 0xc3c
/* 80AB317C  3C 80 80 AB */	lis r4, __dt__5csXyzFv@ha /* 0x80AB5064@ha */
/* 80AB3180  38 84 50 64 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AB5064@l */
/* 80AB3184  38 A0 00 06 */	li r5, 6
/* 80AB3188  38 C0 00 04 */	li r6, 4
/* 80AB318C  4B 8A EB 5D */	bl __destroy_arr
/* 80AB3190  38 7E 0C 24 */	addi r3, r30, 0xc24
/* 80AB3194  3C 80 80 AB */	lis r4, __dt__5csXyzFv@ha /* 0x80AB5064@ha */
/* 80AB3198  38 84 50 64 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AB5064@l */
/* 80AB319C  38 A0 00 06 */	li r5, 6
/* 80AB31A0  38 C0 00 04 */	li r6, 4
/* 80AB31A4  4B 8A EB 45 */	bl __destroy_arr
/* 80AB31A8  38 7E 0B F0 */	addi r3, r30, 0xbf0
/* 80AB31AC  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB50A4@ha */
/* 80AB31B0  38 84 50 A4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB50A4@l */
/* 80AB31B4  38 A0 00 0C */	li r5, 0xc
/* 80AB31B8  38 C0 00 04 */	li r6, 4
/* 80AB31BC  4B 8A EB 2D */	bl __destroy_arr
lbl_80AB31C0:
/* 80AB31C0  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80AB31C4  38 80 FF FF */	li r4, -1
/* 80AB31C8  4B 80 DA A5 */	bl __dt__17Z2CreatureCitizenFv
/* 80AB31CC  7F C3 F3 78 */	mr r3, r30
/* 80AB31D0  38 80 00 00 */	li r4, 0
/* 80AB31D4  48 00 1F 11 */	bl __dt__8daNpcF_cFv
/* 80AB31D8  7F E0 07 35 */	extsh. r0, r31
/* 80AB31DC  40 81 00 0C */	ble lbl_80AB31E8
/* 80AB31E0  7F C3 F3 78 */	mr r3, r30
/* 80AB31E4  4B 81 BB 59 */	bl __dl__FPv
lbl_80AB31E8:
/* 80AB31E8  7F C3 F3 78 */	mr r3, r30
/* 80AB31EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB31F0  4B 8A F0 2D */	bl _restgpr_26
/* 80AB31F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB31F8  7C 08 03 A6 */	mtlr r0
/* 80AB31FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB3200  4E 80 00 20 */	blr 
