lbl_800067F4:
/* 800067F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800067F8  7C 08 02 A6 */	mflr r0
/* 800067FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80006800  48 00 01 85 */	bl mDoPrintf_vprintf__FPCcP16__va_list_struct
/* 80006804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006808  7C 08 03 A6 */	mtlr r0
/* 8000680C  38 21 00 10 */	addi r1, r1, 0x10
/* 80006810  4E 80 00 20 */	blr 
