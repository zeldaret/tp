lbl_80007318:
/* 80007318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000731C  7C 08 02 A6 */	mflr r0
/* 80007320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007324  3C 60 80 3E */	lis r3, g_mDoAud_zelAudio@ha /* 0x803DBF4C@ha */
/* 80007328  38 63 BF 4C */	addi r3, r3, g_mDoAud_zelAudio@l /* 0x803DBF4C@l */
/* 8000732C  48 2C 5F 1D */	bl __ct__10Z2AudioMgrFv
/* 80007330  3C 60 80 3A */	lis r3, __vt__17mDoAud_zelAudio_c@ha /* 0x803A2F40@ha */
/* 80007334  38 03 2F 40 */	addi r0, r3, __vt__17mDoAud_zelAudio_c@l /* 0x803A2F40@l */
/* 80007338  3C 60 80 3E */	lis r3, g_mDoAud_zelAudio@ha /* 0x803DBF4C@ha */
/* 8000733C  38 63 BF 4C */	addi r3, r3, g_mDoAud_zelAudio@l /* 0x803DBF4C@l */
/* 80007340  90 03 05 14 */	stw r0, 0x514(r3)
/* 80007344  3C 80 80 00 */	lis r4, __dt__17mDoAud_zelAudio_cFv@ha /* 0x80007368@ha */
/* 80007348  38 84 73 68 */	addi r4, r4, __dt__17mDoAud_zelAudio_cFv@l /* 0x80007368@l */
/* 8000734C  3C A0 80 3E */	lis r5, lit_3620@ha /* 0x803DBF40@ha */
/* 80007350  38 A5 BF 40 */	addi r5, r5, lit_3620@l /* 0x803DBF40@l */
/* 80007354  48 35 A8 D1 */	bl __register_global_object
/* 80007358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000735C  7C 08 03 A6 */	mtlr r0
/* 80007360  38 21 00 10 */	addi r1, r1, 0x10
/* 80007364  4E 80 00 20 */	blr 
