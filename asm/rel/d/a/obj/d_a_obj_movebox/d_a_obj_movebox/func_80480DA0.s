lbl_80480DA0:
/* 80480DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80480DA4  7C 08 02 A6 */	mflr r0
/* 80480DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80480DAC  3C 60 80 48 */	lis r3, M_wall_work__Q212daObjMovebox5Bgc_c@ha /* 0x804820CC@ha */
/* 80480DB0  38 63 20 CC */	addi r3, r3, M_wall_work__Q212daObjMovebox5Bgc_c@l /* 0x804820CC@l */
/* 80480DB4  3C 80 80 07 */	lis r4, __dt__14dBgS_ObjLinChkFv@ha /* 0x80077FB8@ha */
/* 80480DB8  38 84 7F B8 */	addi r4, r4, __dt__14dBgS_ObjLinChkFv@l /* 0x80077FB8@l */
/* 80480DBC  38 A0 00 70 */	li r5, 0x70
/* 80480DC0  38 C0 00 17 */	li r6, 0x17
/* 80480DC4  4B EE 0F 25 */	bl __destroy_arr
/* 80480DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80480DCC  7C 08 03 A6 */	mtlr r0
/* 80480DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80480DD4  4E 80 00 20 */	blr 
