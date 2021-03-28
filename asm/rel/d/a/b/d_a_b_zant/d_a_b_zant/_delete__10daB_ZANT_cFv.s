lbl_8064DB70:
/* 8064DB70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064DB74  7C 08 02 A6 */	mflr r0
/* 8064DB78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064DB7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8064DB80  7C 7F 1B 78 */	mr r31, r3
/* 8064DB84  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8064DB88  3C 80 80 65 */	lis r4, stringBase0@ha
/* 8064DB8C  38 84 EE 60 */	addi r4, r4, stringBase0@l
/* 8064DB90  4B 9D F4 78 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8064DB94  88 1F 38 B8 */	lbz r0, 0x38b8(r31)
/* 8064DB98  28 00 00 00 */	cmplwi r0, 0
/* 8064DB9C  41 82 00 10 */	beq lbl_8064DBAC
/* 8064DBA0  38 00 00 00 */	li r0, 0
/* 8064DBA4  3C 60 80 65 */	lis r3, struct_8064F5F4+0x1@ha
/* 8064DBA8  98 03 F5 F5 */	stb r0, struct_8064F5F4+0x1@l(r3)
lbl_8064DBAC:
/* 8064DBAC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8064DBB0  28 00 00 00 */	cmplwi r0, 0
/* 8064DBB4  41 82 00 18 */	beq lbl_8064DBCC
/* 8064DBB8  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 8064DBBC  81 9F 05 F0 */	lwz r12, 0x5f0(r31)
/* 8064DBC0  81 8C 00 08 */	lwz r12, 8(r12)
/* 8064DBC4  7D 89 03 A6 */	mtctr r12
/* 8064DBC8  4E 80 04 21 */	bctrl 
lbl_8064DBCC:
/* 8064DBCC  38 60 00 01 */	li r3, 1
/* 8064DBD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8064DBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064DBD8  7C 08 03 A6 */	mtlr r0
/* 8064DBDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8064DBE0  4E 80 00 20 */	blr 
