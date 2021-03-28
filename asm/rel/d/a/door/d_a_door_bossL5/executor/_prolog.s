lbl_80670BC0:
/* 80670BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80670BC4  7C 08 02 A6 */	mflr r0
/* 80670BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80670BCC  3C 60 80 67 */	lis r3, data_806724C0@ha
/* 80670BD0  38 63 24 C0 */	addi r3, r3, data_806724C0@l
/* 80670BD4  4B BF 25 78 */	b ModuleConstructorsX
/* 80670BD8  4B BF 24 B0 */	b ModuleProlog
/* 80670BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80670BE0  7C 08 03 A6 */	mtlr r0
/* 80670BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80670BE8  4E 80 00 20 */	blr 
