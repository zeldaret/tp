lbl_809E42E0:
/* 809E42E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E42E4  7C 08 02 A6 */	mflr r0
/* 809E42E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E42EC  39 61 00 20 */	addi r11, r1, 0x20
/* 809E42F0  4B 97 DE E0 */	b _savegpr_26
/* 809E42F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809E42F8  7C 9F 23 78 */	mr r31, r4
/* 809E42FC  41 82 01 C8 */	beq lbl_809E44C4
/* 809E4300  3C 60 80 9F */	lis r3, __vt__11daNpc_grS_c@ha
/* 809E4304  38 03 81 58 */	addi r0, r3, __vt__11daNpc_grS_c@l
/* 809E4308  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809E430C  3B A0 00 00 */	li r29, 0
/* 809E4310  3B 80 00 00 */	li r28, 0
/* 809E4314  3C 60 80 9F */	lis r3, l_resNames@ha
/* 809E4318  3B 43 80 84 */	addi r26, r3, l_resNames@l
/* 809E431C  3C 60 80 9F */	lis r3, l_loadRes_list@ha
/* 809E4320  3B 63 80 7C */	addi r27, r3, l_loadRes_list@l
/* 809E4324  48 00 00 20 */	b lbl_809E4344
lbl_809E4328:
/* 809E4328  38 7C 0D E4 */	addi r3, r28, 0xde4
/* 809E432C  7C 7E 1A 14 */	add r3, r30, r3
/* 809E4330  54 00 10 3A */	slwi r0, r0, 2
/* 809E4334  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809E4338  4B 64 8C D0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809E433C  3B BD 00 04 */	addi r29, r29, 4
/* 809E4340  3B 9C 00 08 */	addi r28, r28, 8
lbl_809E4344:
/* 809E4344  88 1E 0E 14 */	lbz r0, 0xe14(r30)
/* 809E4348  54 00 10 3A */	slwi r0, r0, 2
/* 809E434C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 809E4350  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809E4354  2C 00 00 00 */	cmpwi r0, 0
/* 809E4358  40 80 FF D0 */	bge lbl_809E4328
/* 809E435C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809E4360  28 00 00 00 */	cmplwi r0, 0
/* 809E4364  41 82 00 0C */	beq lbl_809E4370
/* 809E4368  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809E436C  4B 62 CF A4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809E4370:
/* 809E4370  34 1E 0C 90 */	addic. r0, r30, 0xc90
/* 809E4374  41 82 00 84 */	beq lbl_809E43F8
/* 809E4378  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809E437C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809E4380  90 7E 0C CC */	stw r3, 0xccc(r30)
/* 809E4384  38 03 00 2C */	addi r0, r3, 0x2c
/* 809E4388  90 1E 0D B0 */	stw r0, 0xdb0(r30)
/* 809E438C  38 03 00 84 */	addi r0, r3, 0x84
/* 809E4390  90 1E 0D C8 */	stw r0, 0xdc8(r30)
/* 809E4394  34 1E 0D 94 */	addic. r0, r30, 0xd94
/* 809E4398  41 82 00 54 */	beq lbl_809E43EC
/* 809E439C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809E43A0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809E43A4  90 7E 0D B0 */	stw r3, 0xdb0(r30)
/* 809E43A8  38 03 00 58 */	addi r0, r3, 0x58
/* 809E43AC  90 1E 0D C8 */	stw r0, 0xdc8(r30)
/* 809E43B0  34 1E 0D B4 */	addic. r0, r30, 0xdb4
/* 809E43B4  41 82 00 10 */	beq lbl_809E43C4
/* 809E43B8  3C 60 80 9F */	lis r3, __vt__8cM3dGCyl@ha
/* 809E43BC  38 03 82 00 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809E43C0  90 1E 0D C8 */	stw r0, 0xdc8(r30)
lbl_809E43C4:
/* 809E43C4  34 1E 0D 94 */	addic. r0, r30, 0xd94
/* 809E43C8  41 82 00 24 */	beq lbl_809E43EC
/* 809E43CC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809E43D0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809E43D4  90 1E 0D B0 */	stw r0, 0xdb0(r30)
/* 809E43D8  34 1E 0D 94 */	addic. r0, r30, 0xd94
/* 809E43DC  41 82 00 10 */	beq lbl_809E43EC
/* 809E43E0  3C 60 80 9F */	lis r3, __vt__8cM3dGAab@ha
/* 809E43E4  38 03 82 0C */	addi r0, r3, __vt__8cM3dGAab@l
/* 809E43E8  90 1E 0D AC */	stw r0, 0xdac(r30)
lbl_809E43EC:
/* 809E43EC  38 7E 0C 90 */	addi r3, r30, 0xc90
/* 809E43F0  38 80 00 00 */	li r4, 0
/* 809E43F4  4B 69 FC F0 */	b __dt__12dCcD_GObjInfFv
lbl_809E43F8:
/* 809E43F8  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 809E43FC  3C 80 80 9E */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 809E4400  38 84 74 F4 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 809E4404  38 A0 00 08 */	li r5, 8
/* 809E4408  38 C0 00 02 */	li r6, 2
/* 809E440C  4B 97 D8 DC */	b __destroy_arr
/* 809E4410  34 1E 0B E0 */	addic. r0, r30, 0xbe0
/* 809E4414  41 82 00 88 */	beq lbl_809E449C
/* 809E4418  3C 60 80 9F */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 809E441C  38 03 82 18 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 809E4420  90 1E 0C 78 */	stw r0, 0xc78(r30)
/* 809E4424  38 7E 0C 5C */	addi r3, r30, 0xc5c
/* 809E4428  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809E442C  38 84 76 48 */	addi r4, r4, __dt__5csXyzFv@l
/* 809E4430  38 A0 00 06 */	li r5, 6
/* 809E4434  38 C0 00 04 */	li r6, 4
/* 809E4438  4B 97 D8 B0 */	b __destroy_arr
/* 809E443C  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 809E4440  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809E4444  38 84 76 48 */	addi r4, r4, __dt__5csXyzFv@l
/* 809E4448  38 A0 00 06 */	li r5, 6
/* 809E444C  38 C0 00 04 */	li r6, 4
/* 809E4450  4B 97 D8 98 */	b __destroy_arr
/* 809E4454  38 7E 0C 2C */	addi r3, r30, 0xc2c
/* 809E4458  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809E445C  38 84 76 48 */	addi r4, r4, __dt__5csXyzFv@l
/* 809E4460  38 A0 00 06 */	li r5, 6
/* 809E4464  38 C0 00 04 */	li r6, 4
/* 809E4468  4B 97 D8 80 */	b __destroy_arr
/* 809E446C  38 7E 0C 14 */	addi r3, r30, 0xc14
/* 809E4470  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809E4474  38 84 76 48 */	addi r4, r4, __dt__5csXyzFv@l
/* 809E4478  38 A0 00 06 */	li r5, 6
/* 809E447C  38 C0 00 04 */	li r6, 4
/* 809E4480  4B 97 D8 68 */	b __destroy_arr
/* 809E4484  38 7E 0B E0 */	addi r3, r30, 0xbe0
/* 809E4488  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha
/* 809E448C  38 84 76 88 */	addi r4, r4, __dt__4cXyzFv@l
/* 809E4490  38 A0 00 0C */	li r5, 0xc
/* 809E4494  38 C0 00 04 */	li r6, 4
/* 809E4498  4B 97 D8 50 */	b __destroy_arr
lbl_809E449C:
/* 809E449C  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809E44A0  38 80 FF FF */	li r4, -1
/* 809E44A4  4B 8D BF 7C */	b __dt__10Z2CreatureFv
/* 809E44A8  7F C3 F3 78 */	mr r3, r30
/* 809E44AC  38 80 00 00 */	li r4, 0
/* 809E44B0  48 00 32 19 */	bl __dt__8daNpcF_cFv
/* 809E44B4  7F E0 07 35 */	extsh. r0, r31
/* 809E44B8  40 81 00 0C */	ble lbl_809E44C4
/* 809E44BC  7F C3 F3 78 */	mr r3, r30
/* 809E44C0  4B 8E A8 7C */	b __dl__FPv
lbl_809E44C4:
/* 809E44C4  7F C3 F3 78 */	mr r3, r30
/* 809E44C8  39 61 00 20 */	addi r11, r1, 0x20
/* 809E44CC  4B 97 DD 50 */	b _restgpr_26
/* 809E44D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E44D4  7C 08 03 A6 */	mtlr r0
/* 809E44D8  38 21 00 20 */	addi r1, r1, 0x20
/* 809E44DC  4E 80 00 20 */	blr 
