lbl_805A69E0:
/* 805A69E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A69E4  7C 08 02 A6 */	mflr r0
/* 805A69E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A69EC  3C 60 80 5A */	lis r3, data_805A6E64@ha
/* 805A69F0  38 63 6E 64 */	addi r3, r3, data_805A6E64@l
/* 805A69F4  4B CB C7 58 */	b ModuleConstructorsX
/* 805A69F8  4B CB C6 90 */	b ModuleProlog
/* 805A69FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6A00  7C 08 03 A6 */	mtlr r0
/* 805A6A04  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6A08  4E 80 00 20 */	blr 
