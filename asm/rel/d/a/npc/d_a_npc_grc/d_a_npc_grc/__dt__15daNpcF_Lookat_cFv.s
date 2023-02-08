lbl_809CECE8:
/* 809CECE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CECEC  7C 08 02 A6 */	mflr r0
/* 809CECF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CECF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CECF8  93 C1 00 08 */	stw r30, 8(r1)
/* 809CECFC  7C 7E 1B 79 */	or. r30, r3, r3
/* 809CED00  7C 9F 23 78 */	mr r31, r4
/* 809CED04  41 82 00 98 */	beq lbl_809CED9C
/* 809CED08  3C 60 80 9D */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x809CFB44@ha */
/* 809CED0C  38 03 FB 44 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x809CFB44@l */
/* 809CED10  90 1E 00 98 */	stw r0, 0x98(r30)
/* 809CED14  38 7E 00 7C */	addi r3, r30, 0x7c
/* 809CED18  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809CEDB8@ha */
/* 809CED1C  38 84 ED B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809CEDB8@l */
/* 809CED20  38 A0 00 06 */	li r5, 6
/* 809CED24  38 C0 00 04 */	li r6, 4
/* 809CED28  4B 99 2F C1 */	bl __destroy_arr
/* 809CED2C  38 7E 00 64 */	addi r3, r30, 0x64
/* 809CED30  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809CEDB8@ha */
/* 809CED34  38 84 ED B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809CEDB8@l */
/* 809CED38  38 A0 00 06 */	li r5, 6
/* 809CED3C  38 C0 00 04 */	li r6, 4
/* 809CED40  4B 99 2F A9 */	bl __destroy_arr
/* 809CED44  38 7E 00 4C */	addi r3, r30, 0x4c
/* 809CED48  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809CEDB8@ha */
/* 809CED4C  38 84 ED B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809CEDB8@l */
/* 809CED50  38 A0 00 06 */	li r5, 6
/* 809CED54  38 C0 00 04 */	li r6, 4
/* 809CED58  4B 99 2F 91 */	bl __destroy_arr
/* 809CED5C  38 7E 00 34 */	addi r3, r30, 0x34
/* 809CED60  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809CEDB8@ha */
/* 809CED64  38 84 ED B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809CEDB8@l */
/* 809CED68  38 A0 00 06 */	li r5, 6
/* 809CED6C  38 C0 00 04 */	li r6, 4
/* 809CED70  4B 99 2F 79 */	bl __destroy_arr
/* 809CED74  7F C3 F3 78 */	mr r3, r30
/* 809CED78  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha /* 0x809CEDF8@ha */
/* 809CED7C  38 84 ED F8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809CEDF8@l */
/* 809CED80  38 A0 00 0C */	li r5, 0xc
/* 809CED84  38 C0 00 04 */	li r6, 4
/* 809CED88  4B 99 2F 61 */	bl __destroy_arr
/* 809CED8C  7F E0 07 35 */	extsh. r0, r31
/* 809CED90  40 81 00 0C */	ble lbl_809CED9C
/* 809CED94  7F C3 F3 78 */	mr r3, r30
/* 809CED98  4B 8F FF A5 */	bl __dl__FPv
lbl_809CED9C:
/* 809CED9C  7F C3 F3 78 */	mr r3, r30
/* 809CEDA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CEDA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809CEDA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CEDAC  7C 08 03 A6 */	mtlr r0
/* 809CEDB0  38 21 00 10 */	addi r1, r1, 0x10
/* 809CEDB4  4E 80 00 20 */	blr 
