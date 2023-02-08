lbl_80031EAC:
/* 80031EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031EB0  7C 08 02 A6 */	mflr r0
/* 80031EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031EB8  3C 60 80 42 */	lis r3, mPos__12daObjCarry_c@ha /* 0x804245AC@ha */
/* 80031EBC  38 63 45 AC */	addi r3, r3, mPos__12daObjCarry_c@l /* 0x804245AC@l */
/* 80031EC0  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 80031EC4  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 80031EC8  38 A0 00 0C */	li r5, 0xc
/* 80031ECC  38 C0 00 05 */	li r6, 5
/* 80031ED0  48 32 FE 19 */	bl __destroy_arr
/* 80031ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031ED8  7C 08 03 A6 */	mtlr r0
/* 80031EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80031EE0  4E 80 00 20 */	blr 
