lbl_80BB3658:
/* 80BB3658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB365C  7C 08 02 A6 */	mflr r0
/* 80BB3660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB3664  3C 60 80 BB */	lis r3, M_gnd_work__Q29daObjBm_c5Bgc_c@ha /* 0x80BB3F9C@ha */
/* 80BB3668  38 63 3F 9C */	addi r3, r3, M_gnd_work__Q29daObjBm_c5Bgc_c@l /* 0x80BB3F9C@l */
/* 80BB366C  3C 80 80 BB */	lis r4, __dt__14dBgS_ObjGndChkFv@ha /* 0x80BB3690@ha */
/* 80BB3670  38 84 36 90 */	addi r4, r4, __dt__14dBgS_ObjGndChkFv@l /* 0x80BB3690@l */
/* 80BB3674  38 A0 00 54 */	li r5, 0x54
/* 80BB3678  38 C0 00 17 */	li r6, 0x17
/* 80BB367C  4B 7A E6 6D */	bl __destroy_arr
/* 80BB3680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB3684  7C 08 03 A6 */	mtlr r0
/* 80BB3688  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB368C  4E 80 00 20 */	blr 
