lbl_804D1934:
/* 804D1934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D1938  7C 08 02 A6 */	mflr r0
/* 804D193C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D1944  3C 60 80 4D */	lis r3, __global_destructor_chain@ha
/* 804D1948  3B E3 4F C0 */	addi r31, r3, __global_destructor_chain@l
/* 804D194C  48 00 00 20 */	b lbl_804D196C
lbl_804D1950:
/* 804D1950  80 05 00 00 */	lwz r0, 0(r5)
/* 804D1954  90 1F 00 00 */	stw r0, 0(r31)
/* 804D1958  80 65 00 08 */	lwz r3, 8(r5)
/* 804D195C  38 80 FF FF */	li r4, -1
/* 804D1960  81 85 00 04 */	lwz r12, 4(r5)
/* 804D1964  7D 89 03 A6 */	mtctr r12
/* 804D1968  4E 80 04 21 */	bctrl 
lbl_804D196C:
/* 804D196C  80 BF 00 00 */	lwz r5, 0(r31)
/* 804D1970  28 05 00 00 */	cmplwi r5, 0
/* 804D1974  40 82 FF DC */	bne lbl_804D1950
/* 804D1978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D197C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D1980  7C 08 03 A6 */	mtlr r0
/* 804D1984  38 21 00 10 */	addi r1, r1, 0x10
/* 804D1988  4E 80 00 20 */	blr 
