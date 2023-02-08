lbl_8054E318:
/* 8054E318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E31C  7C 08 02 A6 */	mflr r0
/* 8054E320  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054E328  93 C1 00 08 */	stw r30, 8(r1)
/* 8054E32C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8054E330  7C 9E 23 78 */	mr r30, r4
/* 8054E334  41 82 00 C4 */	beq lbl_8054E3F8
/* 8054E338  3C 60 80 55 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x8054F0A4@ha */
/* 8054E33C  38 03 F0 A4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x8054F0A4@l */
/* 8054E340  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 8054E344  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8054E348  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054E34C  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054E350  38 A0 00 0C */	li r5, 0xc
/* 8054E354  38 C0 00 03 */	li r6, 3
/* 8054E358  4B E1 39 91 */	bl __destroy_arr
/* 8054E35C  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8054E360  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054E364  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054E368  38 A0 00 0C */	li r5, 0xc
/* 8054E36C  38 C0 00 03 */	li r6, 3
/* 8054E370  4B E1 39 79 */	bl __destroy_arr
/* 8054E374  38 7F 00 9C */	addi r3, r31, 0x9c
/* 8054E378  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054E37C  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054E380  38 A0 00 0C */	li r5, 0xc
/* 8054E384  38 C0 00 03 */	li r6, 3
/* 8054E388  4B E1 39 61 */	bl __destroy_arr
/* 8054E38C  38 7F 00 78 */	addi r3, r31, 0x78
/* 8054E390  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054E394  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054E398  38 A0 00 0C */	li r5, 0xc
/* 8054E39C  38 C0 00 03 */	li r6, 3
/* 8054E3A0  4B E1 39 49 */	bl __destroy_arr
/* 8054E3A4  38 7F 00 54 */	addi r3, r31, 0x54
/* 8054E3A8  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054E3AC  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054E3B0  38 A0 00 0C */	li r5, 0xc
/* 8054E3B4  38 C0 00 03 */	li r6, 3
/* 8054E3B8  4B E1 39 31 */	bl __destroy_arr
/* 8054E3BC  38 7F 00 30 */	addi r3, r31, 0x30
/* 8054E3C0  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054E3C4  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054E3C8  38 A0 00 0C */	li r5, 0xc
/* 8054E3CC  38 C0 00 03 */	li r6, 3
/* 8054E3D0  4B E1 39 19 */	bl __destroy_arr
/* 8054E3D4  28 1F 00 00 */	cmplwi r31, 0
/* 8054E3D8  41 82 00 10 */	beq lbl_8054E3E8
/* 8054E3DC  3C 60 80 55 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x8054F098@ha */
/* 8054E3E0  38 03 F0 98 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x8054F098@l */
/* 8054E3E4  90 1F 00 04 */	stw r0, 4(r31)
lbl_8054E3E8:
/* 8054E3E8  7F C0 07 35 */	extsh. r0, r30
/* 8054E3EC  40 81 00 0C */	ble lbl_8054E3F8
/* 8054E3F0  7F E3 FB 78 */	mr r3, r31
/* 8054E3F4  4B D8 09 49 */	bl __dl__FPv
lbl_8054E3F8:
/* 8054E3F8  7F E3 FB 78 */	mr r3, r31
/* 8054E3FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054E400  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054E404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E408  7C 08 03 A6 */	mtlr r0
/* 8054E40C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E410  4E 80 00 20 */	blr 
