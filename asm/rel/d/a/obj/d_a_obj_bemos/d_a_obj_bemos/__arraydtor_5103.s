lbl_80BB35A8:
/* 80BB35A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB35AC  7C 08 02 A6 */	mflr r0
/* 80BB35B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB35B4  3C 60 80 BB */	lis r3, M_wall_work__Q29daObjBm_c5Bgc_c@ha
/* 80BB35B8  38 63 47 94 */	addi r3, r3, M_wall_work__Q29daObjBm_c5Bgc_c@l
/* 80BB35BC  3C 80 80 07 */	lis r4, __dt__14dBgS_ObjLinChkFv@ha
/* 80BB35C0  38 84 7F B8 */	addi r4, r4, __dt__14dBgS_ObjLinChkFv@l
/* 80BB35C4  38 A0 00 70 */	li r5, 0x70
/* 80BB35C8  38 C0 00 17 */	li r6, 0x17
/* 80BB35CC  4B 7A E7 1C */	b __destroy_arr
/* 80BB35D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB35D4  7C 08 03 A6 */	mtlr r0
/* 80BB35D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB35DC  4E 80 00 20 */	blr 
