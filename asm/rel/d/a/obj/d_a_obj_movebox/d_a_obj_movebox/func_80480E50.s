lbl_80480E50:
/* 80480E50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80480E54  7C 08 02 A6 */	mflr r0
/* 80480E58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80480E5C  3C 60 80 48 */	lis r3, M_gnd_work__Q212daObjMovebox5Bgc_c@ha /* 0x804818D4@ha */
/* 80480E60  38 63 18 D4 */	addi r3, r3, M_gnd_work__Q212daObjMovebox5Bgc_c@l /* 0x804818D4@l */
/* 80480E64  3C 80 80 48 */	lis r4, __dt__14dBgS_ObjGndChkFv@ha /* 0x8047FEE4@ha */
/* 80480E68  38 84 FE E4 */	addi r4, r4, __dt__14dBgS_ObjGndChkFv@l /* 0x8047FEE4@l */
/* 80480E6C  38 A0 00 54 */	li r5, 0x54
/* 80480E70  38 C0 00 17 */	li r6, 0x17
/* 80480E74  4B EE 0E 75 */	bl __destroy_arr
/* 80480E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80480E7C  7C 08 03 A6 */	mtlr r0
/* 80480E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80480E84  4E 80 00 20 */	blr 
