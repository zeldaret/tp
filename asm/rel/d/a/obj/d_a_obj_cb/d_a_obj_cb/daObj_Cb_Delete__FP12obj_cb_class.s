lbl_80BC5248:
/* 80BC5248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC524C  7C 08 02 A6 */	mflr r0
/* 80BC5250  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC5254  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC5258  7C 7F 1B 78 */	mr r31, r3
/* 80BC525C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80BC5260  3C 80 80 BC */	lis r4, d_a_obj_cb__stringBase0@ha /* 0x80BC584C@ha */
/* 80BC5264  38 84 58 4C */	addi r4, r4, d_a_obj_cb__stringBase0@l /* 0x80BC584C@l */
/* 80BC5268  4B 46 7D A1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BC526C  88 1F 09 78 */	lbz r0, 0x978(r31)
/* 80BC5270  28 00 00 00 */	cmplwi r0, 0
/* 80BC5274  41 82 00 10 */	beq lbl_80BC5284
/* 80BC5278  38 00 00 00 */	li r0, 0
/* 80BC527C  3C 60 80 BC */	lis r3, data_80BC58F8@ha /* 0x80BC58F8@ha */
/* 80BC5280  98 03 58 F8 */	stb r0, data_80BC58F8@l(r3)  /* 0x80BC58F8@l */
lbl_80BC5284:
/* 80BC5284  80 9F 07 F8 */	lwz r4, 0x7f8(r31)
/* 80BC5288  28 04 00 00 */	cmplwi r4, 0
/* 80BC528C  41 82 00 14 */	beq lbl_80BC52A0
/* 80BC5290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC5294  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC5298  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BC529C  4B 4A EF B5 */	bl Release__4cBgSFP9dBgW_Base
lbl_80BC52A0:
/* 80BC52A0  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80BC52A4  28 00 00 00 */	cmplwi r0, 0
/* 80BC52A8  41 82 00 0C */	beq lbl_80BC52B4
/* 80BC52AC  38 7F 05 74 */	addi r3, r31, 0x574
/* 80BC52B0  4B 6F 8D 49 */	bl deleteObject__14Z2SoundObjBaseFv
lbl_80BC52B4:
/* 80BC52B4  38 60 00 01 */	li r3, 1
/* 80BC52B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC52BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC52C0  7C 08 03 A6 */	mtlr r0
/* 80BC52C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC52C8  4E 80 00 20 */	blr 
