lbl_804EF000:
/* 804EF000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF004  7C 08 02 A6 */	mflr r0
/* 804EF008  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF00C  3C 60 80 50 */	lis r3, data_804FA6A8@ha
/* 804EF010  38 63 A6 A8 */	addi r3, r3, data_804FA6A8@l
/* 804EF014  4B D7 41 38 */	b ModuleConstructorsX
/* 804EF018  4B D7 40 70 */	b ModuleProlog
/* 804EF01C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF020  7C 08 03 A6 */	mtlr r0
/* 804EF024  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF028  4E 80 00 20 */	blr 
