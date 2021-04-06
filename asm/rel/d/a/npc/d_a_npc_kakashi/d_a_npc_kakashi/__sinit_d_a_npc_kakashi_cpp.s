lbl_8054E750:
/* 8054E750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E754  7C 08 02 A6 */	mflr r0
/* 8054E758  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E75C  3C 60 80 55 */	lis r3, cNullVec__6Z2Calc@ha /* 0x8054ED9C@ha */
/* 8054E760  38 A3 ED 9C */	addi r5, r3, cNullVec__6Z2Calc@l /* 0x8054ED9C@l */
/* 8054E764  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 8054E768  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 8054E76C  80 64 00 00 */	lwz r3, 0(r4)
/* 8054E770  80 04 00 04 */	lwz r0, 4(r4)
/* 8054E774  90 65 01 90 */	stw r3, 0x190(r5)
/* 8054E778  90 05 01 94 */	stw r0, 0x194(r5)
/* 8054E77C  80 04 00 08 */	lwz r0, 8(r4)
/* 8054E780  90 05 01 98 */	stw r0, 0x198(r5)
/* 8054E784  38 85 01 90 */	addi r4, r5, 0x190
/* 8054E788  80 65 01 6C */	lwz r3, 0x16c(r5)
/* 8054E78C  80 05 01 70 */	lwz r0, 0x170(r5)
/* 8054E790  90 64 00 0C */	stw r3, 0xc(r4)
/* 8054E794  90 04 00 10 */	stw r0, 0x10(r4)
/* 8054E798  80 05 01 74 */	lwz r0, 0x174(r5)
/* 8054E79C  90 04 00 14 */	stw r0, 0x14(r4)
/* 8054E7A0  80 65 01 78 */	lwz r3, 0x178(r5)
/* 8054E7A4  80 05 01 7C */	lwz r0, 0x17c(r5)
/* 8054E7A8  90 64 00 18 */	stw r3, 0x18(r4)
/* 8054E7AC  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8054E7B0  80 05 01 80 */	lwz r0, 0x180(r5)
/* 8054E7B4  90 04 00 20 */	stw r0, 0x20(r4)
/* 8054E7B8  80 65 01 84 */	lwz r3, 0x184(r5)
/* 8054E7BC  80 05 01 88 */	lwz r0, 0x188(r5)
/* 8054E7C0  90 64 00 24 */	stw r3, 0x24(r4)
/* 8054E7C4  90 04 00 28 */	stw r0, 0x28(r4)
/* 8054E7C8  80 05 01 8C */	lwz r0, 0x18c(r5)
/* 8054E7CC  90 04 00 2C */	stw r0, 0x2c(r4)
/* 8054E7D0  3C 60 80 55 */	lis r3, __vt__21daNpc_Kakashi_Param_c@ha /* 0x8054F18C@ha */
/* 8054E7D4  38 03 F1 8C */	addi r0, r3, __vt__21daNpc_Kakashi_Param_c@l /* 0x8054F18C@l */
/* 8054E7D8  3C 60 80 55 */	lis r3, l_HIO@ha /* 0x8054F1EC@ha */
/* 8054E7DC  94 03 F1 EC */	stwu r0, l_HIO@l(r3)  /* 0x8054F1EC@l */
/* 8054E7E0  3C 80 80 55 */	lis r4, __dt__21daNpc_Kakashi_Param_cFv@ha /* 0x8054EA58@ha */
/* 8054E7E4  38 84 EA 58 */	addi r4, r4, __dt__21daNpc_Kakashi_Param_cFv@l /* 0x8054EA58@l */
/* 8054E7E8  3C A0 80 55 */	lis r5, lit_3835@ha /* 0x8054F1E0@ha */
/* 8054E7EC  38 A5 F1 E0 */	addi r5, r5, lit_3835@l /* 0x8054F1E0@l */
/* 8054E7F0  4B FF CB 09 */	bl __register_global_object
/* 8054E7F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E7F8  7C 08 03 A6 */	mtlr r0
/* 8054E7FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E800  4E 80 00 20 */	blr 
