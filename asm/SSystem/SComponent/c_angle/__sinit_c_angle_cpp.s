lbl_80271BD4:
/* 80271BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80271BD8  7C 08 02 A6 */	mflr r0
/* 80271BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80271BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80271BE4  3C 60 80 43 */	lis r3, lit_2401@ha
/* 80271BE8  3B E3 0F 98 */	addi r31, r3, lit_2401@l
/* 80271BEC  38 6D 8C 08 */	la r3, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 80271BF0  38 80 00 00 */	li r4, 0
/* 80271BF4  4B FF F3 A5 */	bl __ct__7cSAngleFs
/* 80271BF8  3C 80 80 03 */	lis r4, __dt__7cSAngleFv@ha
/* 80271BFC  38 84 05 10 */	addi r4, r4, __dt__7cSAngleFv@l
/* 80271C00  38 BF 00 00 */	addi r5, r31, 0
/* 80271C04  48 0F 00 21 */	bl __register_global_object
/* 80271C08  38 6D 8C 0C */	la r3, _1__7cSAngle(r13) /* 8045118C-_SDA_BASE_ */
/* 80271C0C  38 80 00 B6 */	li r4, 0xb6
/* 80271C10  4B FF F3 89 */	bl __ct__7cSAngleFs
/* 80271C14  3C 80 80 03 */	lis r4, __dt__7cSAngleFv@ha
/* 80271C18  38 84 05 10 */	addi r4, r4, __dt__7cSAngleFv@l
/* 80271C1C  38 BF 00 0C */	addi r5, r31, 0xc
/* 80271C20  48 0F 00 05 */	bl __register_global_object
/* 80271C24  38 6D 8C 10 */	la r3, _90__7cSAngle(r13) /* 80451190-_SDA_BASE_ */
/* 80271C28  38 80 40 00 */	li r4, 0x4000
/* 80271C2C  4B FF F3 6D */	bl __ct__7cSAngleFs
/* 80271C30  3C 80 80 03 */	lis r4, __dt__7cSAngleFv@ha
/* 80271C34  38 84 05 10 */	addi r4, r4, __dt__7cSAngleFv@l
/* 80271C38  38 BF 00 18 */	addi r5, r31, 0x18
/* 80271C3C  48 0E FF E9 */	bl __register_global_object
/* 80271C40  38 6D 8C 14 */	la r3, _180__7cSAngle(r13) /* 80451194-_SDA_BASE_ */
/* 80271C44  38 80 80 00 */	li r4, -32768
/* 80271C48  4B FF F3 51 */	bl __ct__7cSAngleFs
/* 80271C4C  3C 80 80 03 */	lis r4, __dt__7cSAngleFv@ha
/* 80271C50  38 84 05 10 */	addi r4, r4, __dt__7cSAngleFv@l
/* 80271C54  38 BF 00 24 */	addi r5, r31, 0x24
/* 80271C58  48 0E FF CD */	bl __register_global_object
/* 80271C5C  38 6D 8C 18 */	la r3, _270__7cSAngle(r13) /* 80451198-_SDA_BASE_ */
/* 80271C60  38 80 C0 00 */	li r4, -16384
/* 80271C64  4B FF F3 35 */	bl __ct__7cSAngleFs
/* 80271C68  3C 80 80 03 */	lis r4, __dt__7cSAngleFv@ha
/* 80271C6C  38 84 05 10 */	addi r4, r4, __dt__7cSAngleFv@l
/* 80271C70  38 BF 00 30 */	addi r5, r31, 0x30
/* 80271C74  48 0E FF B1 */	bl __register_global_object
/* 80271C78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80271C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80271C80  7C 08 03 A6 */	mtlr r0
/* 80271C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80271C88  4E 80 00 20 */	blr 
