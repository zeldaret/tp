lbl_80192C08:
/* 80192C08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80192C0C  7C 08 02 A6 */	mflr r0
/* 80192C10  90 01 00 44 */	stw r0, 0x44(r1)
/* 80192C14  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80192C18  7C 7F 1B 78 */	mr r31, r3
/* 80192C1C  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80192C20  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 80192C24  38 A1 00 08 */	addi r5, r1, 8
/* 80192C28  48 1A FD 4D */	bl OSTicksToCalendarTime
/* 80192C2C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80192C30  3C 80 80 39 */	lis r4, d_file_d_file_sel_info__stringBase0@ha /* 0x803948B8@ha */
/* 80192C34  38 84 48 B8 */	addi r4, r4, d_file_d_file_sel_info__stringBase0@l /* 0x803948B8@l */
/* 80192C38  38 84 00 31 */	addi r4, r4, 0x31
/* 80192C3C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80192C40  38 A5 00 01 */	addi r5, r5, 1
/* 80192C44  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80192C48  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 80192C4C  81 01 00 10 */	lwz r8, 0x10(r1)
/* 80192C50  81 21 00 0C */	lwz r9, 0xc(r1)
/* 80192C54  4C C6 31 82 */	crclr 6
/* 80192C58  48 1D 38 85 */	bl sprintf
/* 80192C5C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80192C60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80192C64  7C 08 03 A6 */	mtlr r0
/* 80192C68  38 21 00 40 */	addi r1, r1, 0x40
/* 80192C6C  4E 80 00 20 */	blr 
