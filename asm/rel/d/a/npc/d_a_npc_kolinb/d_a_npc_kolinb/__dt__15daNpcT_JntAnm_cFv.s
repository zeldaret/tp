lbl_80A4803C:
/* 80A4803C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A48040  7C 08 02 A6 */	mflr r0
/* 80A48044  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A48048  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A4804C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A48050  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A48054  7C 9E 23 78 */	mr r30, r4
/* 80A48058  41 82 00 C4 */	beq lbl_80A4811C
/* 80A4805C  3C 60 80 A5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A48D80@ha */
/* 80A48060  38 03 8D 80 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A48D80@l */
/* 80A48064  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80A48068  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80A4806C  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A47AE4@ha */
/* 80A48070  38 84 7A E4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A47AE4@l */
/* 80A48074  38 A0 00 0C */	li r5, 0xc
/* 80A48078  38 C0 00 03 */	li r6, 3
/* 80A4807C  4B 91 9C 6D */	bl __destroy_arr
/* 80A48080  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A48084  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A47AE4@ha */
/* 80A48088  38 84 7A E4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A47AE4@l */
/* 80A4808C  38 A0 00 0C */	li r5, 0xc
/* 80A48090  38 C0 00 03 */	li r6, 3
/* 80A48094  4B 91 9C 55 */	bl __destroy_arr
/* 80A48098  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80A4809C  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A47AE4@ha */
/* 80A480A0  38 84 7A E4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A47AE4@l */
/* 80A480A4  38 A0 00 0C */	li r5, 0xc
/* 80A480A8  38 C0 00 03 */	li r6, 3
/* 80A480AC  4B 91 9C 3D */	bl __destroy_arr
/* 80A480B0  38 7F 00 78 */	addi r3, r31, 0x78
/* 80A480B4  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A47AE4@ha */
/* 80A480B8  38 84 7A E4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A47AE4@l */
/* 80A480BC  38 A0 00 0C */	li r5, 0xc
/* 80A480C0  38 C0 00 03 */	li r6, 3
/* 80A480C4  4B 91 9C 25 */	bl __destroy_arr
/* 80A480C8  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A480CC  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A47AE4@ha */
/* 80A480D0  38 84 7A E4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A47AE4@l */
/* 80A480D4  38 A0 00 0C */	li r5, 0xc
/* 80A480D8  38 C0 00 03 */	li r6, 3
/* 80A480DC  4B 91 9C 0D */	bl __destroy_arr
/* 80A480E0  38 7F 00 30 */	addi r3, r31, 0x30
/* 80A480E4  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha /* 0x80A47AE4@ha */
/* 80A480E8  38 84 7A E4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A47AE4@l */
/* 80A480EC  38 A0 00 0C */	li r5, 0xc
/* 80A480F0  38 C0 00 03 */	li r6, 3
/* 80A480F4  4B 91 9B F5 */	bl __destroy_arr
/* 80A480F8  28 1F 00 00 */	cmplwi r31, 0
/* 80A480FC  41 82 00 10 */	beq lbl_80A4810C
/* 80A48100  3C 60 80 A5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A48D74@ha */
/* 80A48104  38 03 8D 74 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A48D74@l */
/* 80A48108  90 1F 00 04 */	stw r0, 4(r31)
lbl_80A4810C:
/* 80A4810C  7F C0 07 35 */	extsh. r0, r30
/* 80A48110  40 81 00 0C */	ble lbl_80A4811C
/* 80A48114  7F E3 FB 78 */	mr r3, r31
/* 80A48118  4B 88 6C 25 */	bl __dl__FPv
lbl_80A4811C:
/* 80A4811C  7F E3 FB 78 */	mr r3, r31
/* 80A48120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A48124  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A48128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A4812C  7C 08 03 A6 */	mtlr r0
/* 80A48130  38 21 00 10 */	addi r1, r1, 0x10
/* 80A48134  4E 80 00 20 */	blr 
