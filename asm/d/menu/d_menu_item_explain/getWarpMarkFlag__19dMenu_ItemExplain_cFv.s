lbl_801DCB54:
/* 801DCB54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DCB58  7C 08 02 A6 */	mflr r0
/* 801DCB5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DCB60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DCB64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801DCB68  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 801DCB6C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801DCB70  7D 89 03 A6 */	mtctr r12
/* 801DCB74  4E 80 04 21 */	bctrl 
/* 801DCB78  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 801DCB7C  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 801DCB80  2C 00 00 01 */	cmpwi r0, 1
/* 801DCB84  40 82 00 0C */	bne lbl_801DCB90
/* 801DCB88  4B E5 27 69 */	bl dComIfGs_getWarpMarkFlag__Fv
/* 801DCB8C  48 00 00 20 */	b lbl_801DCBAC
lbl_801DCB90:
/* 801DCB90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DCB94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801DCB98  88 03 00 98 */	lbz r0, 0x98(r3)
/* 801DCB9C  7C 00 07 74 */	extsb r0, r0
/* 801DCBA0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 801DCBA4  68 00 00 01 */	xori r0, r0, 1
/* 801DCBA8  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_801DCBAC:
/* 801DCBAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DCBB0  7C 08 03 A6 */	mtlr r0
/* 801DCBB4  38 21 00 10 */	addi r1, r1, 0x10
/* 801DCBB8  4E 80 00 20 */	blr 
