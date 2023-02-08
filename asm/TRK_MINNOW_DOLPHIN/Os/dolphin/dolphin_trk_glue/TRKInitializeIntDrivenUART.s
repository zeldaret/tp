lbl_80371E58:
/* 80371E58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80371E5C  7C 08 02 A6 */	mflr r0
/* 80371E60  3C 80 80 37 */	lis r4, TRKEXICallBack@ha /* 0x80372114@ha */
/* 80371E64  3C 60 80 3D */	lis r3, gDBCommTable@ha /* 0x803D32A8@ha */
/* 80371E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371E6C  38 84 21 14 */	addi r4, r4, TRKEXICallBack@l /* 0x80372114@l */
/* 80371E70  81 83 32 A8 */	lwz r12, gDBCommTable@l(r3)  /* 0x803D32A8@l */
/* 80371E74  7C C3 33 78 */	mr r3, r6
/* 80371E78  7D 89 03 A6 */	mtctr r12
/* 80371E7C  4E 80 04 21 */	bctrl 
/* 80371E80  3C 60 80 3D */	lis r3, gDBCommTable@ha /* 0x803D32A8@ha */
/* 80371E84  38 63 32 A8 */	addi r3, r3, gDBCommTable@l /* 0x803D32A8@l */
/* 80371E88  81 83 00 18 */	lwz r12, 0x18(r3)
/* 80371E8C  7D 89 03 A6 */	mtctr r12
/* 80371E90  4E 80 04 21 */	bctrl 
/* 80371E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80371E98  38 60 00 00 */	li r3, 0
/* 80371E9C  7C 08 03 A6 */	mtlr r0
/* 80371EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80371EA4  4E 80 00 20 */	blr 
