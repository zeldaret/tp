lbl_8029CF68:
/* 8029CF68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029CF6C  7C 08 02 A6 */	mflr r0
/* 8029CF70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029CF74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029CF78  83 ED 86 0C */	lwz r31, data_80450B8C(r13)
/* 8029CF7C  38 60 00 04 */	li r3, 4
/* 8029CF80  4B FF 3F A5 */	bl stop__8JASProbeFl
/* 8029CF84  38 60 00 04 */	li r3, 4
/* 8029CF88  3C 80 80 3A */	lis r4, JASAudioThread__stringBase0@ha
/* 8029CF8C  38 84 B3 38 */	addi r4, r4, JASAudioThread__stringBase0@l
/* 8029CF90  38 84 00 08 */	addi r4, r4, 8
/* 8029CF94  4B FF 3F 51 */	bl start__8JASProbeFlPCc
/* 8029CF98  38 7F 00 30 */	addi r3, r31, 0x30
/* 8029CF9C  38 80 00 00 */	li r4, 0
/* 8029CFA0  38 A0 00 00 */	li r5, 0
/* 8029CFA4  48 0A 1A 51 */	bl OSSendMessage
/* 8029CFA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029CFAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029CFB0  7C 08 03 A6 */	mtlr r0
/* 8029CFB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8029CFB8  4E 80 00 20 */	blr 
