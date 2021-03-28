lbl_80B68E40:
/* 80B68E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B68E44  7C 08 02 A6 */	mflr r0
/* 80B68E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B68E4C  3C 60 80 B7 */	lis r3, data_80B6BCB0@ha
/* 80B68E50  38 63 BC B0 */	addi r3, r3, data_80B6BCB0@l
/* 80B68E54  4B 6F A2 F8 */	b ModuleConstructorsX
/* 80B68E58  4B 6F A2 30 */	b ModuleProlog
/* 80B68E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B68E60  7C 08 03 A6 */	mtlr r0
/* 80B68E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80B68E68  4E 80 00 20 */	blr 
