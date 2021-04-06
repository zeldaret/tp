lbl_80978DD4:
/* 80978DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80978DD8  7C 08 02 A6 */	mflr r0
/* 80978DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80978DE0  80 03 0B 50 */	lwz r0, 0xb50(r3)
/* 80978DE4  90 03 0B 54 */	stw r0, 0xb54(r3)
/* 80978DE8  90 83 0B 50 */	stw r4, 0xb50(r3)
/* 80978DEC  80 03 0B 50 */	lwz r0, 0xb50(r3)
/* 80978DF0  1C A0 00 18 */	mulli r5, r0, 0x18
/* 80978DF4  3C 80 80 98 */	lis r4, ActionTable__11daNpcCdn3_c@ha /* 0x8097F788@ha */
/* 80978DF8  38 04 F7 88 */	addi r0, r4, ActionTable__11daNpcCdn3_c@l /* 0x8097F788@l */
/* 80978DFC  7C 00 2A 14 */	add r0, r0, r5
/* 80978E00  90 03 0B 4C */	stw r0, 0xb4c(r3)
/* 80978E04  48 00 00 15 */	bl callInit__11daNpcCdn3_cFv
/* 80978E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80978E0C  7C 08 03 A6 */	mtlr r0
/* 80978E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80978E14  4E 80 00 20 */	blr 
